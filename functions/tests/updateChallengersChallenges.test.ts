import { expect } from 'chai'
import * as admin from 'firebase-admin'
import { CloudFunction } from 'firebase-functions/core'
import { describe } from 'mocha'
import * as sinon from 'sinon'
import * as tsSinon from 'ts-sinon'

const test = require('firebase-functions-test')();

const getChallengesCollectionStub = (challengeDocStub: {}) => {
    return {
        docs: [challengeDocStub],
        get: sinon.stub().resolves({ docs: [challengeDocStub] }),
    };
}

const getChallengersCollectionStub = (challengerDocStub: {}) => {
    return {
        docs: [challengerDocStub],
        get: sinon.stub().resolves({ docs: [challengerDocStub] }),
    };
}

const getFirestoreStub = (challengersCollectionStub: {}) => {
    return {
        collection: sinon.stub().withArgs("challengers").returns(challengersCollectionStub),
    } as any;
}

describe("updateChallengersChallenges Cloud function test", () => {

    let firestoreStub: tsSinon.StubbedInstance<any>
    let myFunctions: { updateChallengersChallenges: CloudFunction<any> };

    beforeEach(() => {
        const challengeDocStub = {
            data: sinon.stub().returns({ isCompleted: true, failures: 0, maxFailures: 0 }),
            ref: { update: sinon.stub().resolves(), },
        };

        const challengesCollectionStub = getChallengesCollectionStub(challengeDocStub)

        const challengerDocStub = {
            data: sinon.stub().returns({}),
            ref: {
                collection: sinon.stub().withArgs("challenges").returns(challengesCollectionStub),
                update: sinon.stub().resolves(),
            },
        }

        const challengersCollectionStub = getChallengersCollectionStub(challengerDocStub)

        firestoreStub = getFirestoreStub(challengersCollectionStub)

        sinon.stub(admin, 'initializeApp');
        sinon.stub(admin, 'firestore')
            .get(function () {
                return function () {
                    return firestoreStub;
                }
            });
        myFunctions = require('../src/index'); // should be done after mocking admin.initializedApp()
    })

    afterEach(() => {
        sinon.restore();
        test.cleanup();
    });

    it("Should reset challenges' isCompleted to false", async () => {
        const wrapped = test.wrap(myFunctions.updateChallengersChallenges);

        await wrapped({});

        const challengersCollection = await firestoreStub.collection('challengers').get();
        const challengerDoc = challengersCollection.docs[0];
        const challengesCollection = await challengerDoc.ref.collection('challenges').get();
        const challengeDoc = challengesCollection.docs[0];

        expect(challengeDoc.ref.update.calledWith({ isCompleted: false })).to.be.true;
    });
});

describe("Update Challengers' isWasted", () => {
    let firestoreStub: tsSinon.StubbedInstance<any>
    let myFunctions: { updateChallengersChallenges: CloudFunction<any> };

    beforeEach(() => {
        const challengeDocStub = {
            data: sinon.stub().returns({ isCompleted: false, failures: 0, maxFailures: 0 }),
            ref: { update: sinon.stub().resolves(), },
        };

        const challengesCollectionStub = getChallengesCollectionStub(challengeDocStub)

        const challengerDocStub = {
            data: sinon.stub().returns({ isWasted: false }),
            ref: {
                collection: sinon.stub().withArgs("challenges").returns(challengesCollectionStub),
                update: sinon.stub().resolves(),
            },
        }

        const challengersCollectionStub = getChallengersCollectionStub(challengerDocStub)

        firestoreStub = getFirestoreStub(challengersCollectionStub)

        sinon.stub(admin, 'initializeApp');
        sinon.stub(admin, 'firestore')
            .get(function () {
                return function () {
                    return firestoreStub;
                }
            });
        myFunctions = require('../src/index'); // should be done after mocking admin.initializedApp()
    })

    afterEach(() => {
        sinon.restore();
        test.cleanup();
    });

    it("Should increment challenge's failures to 1 if isCompleted is false", async () => {
        const wrapped = test.wrap(myFunctions.updateChallengersChallenges);

        await wrapped({});

        const challengersCollection = await firestoreStub.collection('challengers').get();
        const challengerDoc = challengersCollection.docs[0];
        const challengesCollection = await challengerDoc.ref.collection('challenges').get();
        const challengeDoc = challengesCollection.docs[0];

        expect(challengeDoc.ref.update.calledWith({ failures: 1 })).to.be.true;
    })

    it("Should set Challenger's isWasted: true when all challenges are failed", async () => {
        const wrapped = test.wrap(myFunctions.updateChallengersChallenges);

        await wrapped({});

        const challengersCollection = await firestoreStub.collection('challengers').get();
        const challengerDoc = challengersCollection.docs[0];


        expect(challengerDoc.ref.update.calledWith({ isWasted: true })).to.be.true;
    })
});