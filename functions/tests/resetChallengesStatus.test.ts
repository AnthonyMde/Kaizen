import { expect } from 'chai'
import * as admin from 'firebase-admin'
import { CloudFunction } from 'firebase-functions/core'
import { describe } from 'mocha'
import * as sinon from 'sinon'
import * as tsSinon from 'ts-sinon'

const test = require('firebase-functions-test')();

describe("resetChallengesStatus Cloud function", () => {

    let firestoreStub: tsSinon.StubbedInstance<any>
    let myFunctions: { resetChallengesStatus: CloudFunction<any> };

    beforeEach(() => {
        const challengeDocStub = {
            ref: { update: sinon.stub().resolves() },
        };

        const challengesCollectionStub = {
            docs: [challengeDocStub],
            get: sinon.stub().resolves({ docs: [challengeDocStub] }),
        };

        const challengerDocStub = {
            ref: {
                collection: sinon.stub().withArgs("challenges").returns(challengesCollectionStub),
            },
        };

        const challengersCollectionStub = {
            docs: [challengerDocStub],
            get: sinon.stub().resolves({ docs: [challengerDocStub] }),
        };

        firestoreStub = {
            collection: sinon.stub().withArgs("challengers").returns(challengersCollectionStub),
        } as any;

        sinon.stub(admin, 'initializeApp');
        sinon.stub(admin, 'firestore')
            .get(function () {
                return function () {
                    return firestoreStub;
                }
            });
        myFunctions = require('../src/index'); // should be done after mocking admin.initializedApp()
    });

    afterEach(() => {
        sinon.restore();
        test.cleanup();
    });

    it("Should reset challenges' isCompleted to false", async () => {
        const wrapped = test.wrap(myFunctions.resetChallengesStatus);

        await wrapped({});

        const challengersCollection = await firestoreStub.collection('challengers').get();
        const challengerDoc = challengersCollection.docs[0];
        const challengesCollection = await challengerDoc.ref.collection('challenges').get();
        const challengeDoc = challengesCollection.docs[0];

        expect(challengeDoc.ref.update.calledWith({ isCompleted: false })).to.be.true;
    });
});