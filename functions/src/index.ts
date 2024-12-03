/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import * as admin from "firebase-admin";
import { onSchedule } from "firebase-functions/scheduler";

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

admin.initializeApp();

export const updateChallengersChallenges = onSchedule(
    { schedule: "0 4 * * *", timeZone: "Europe/Paris" }, async () => {
        const db = admin.firestore();

        const challengersCollection = await db.collection("challengers").get();

        for (const challengerDoc of challengersCollection.docs) {
            const challengerData = challengerDoc.data()
            let hasAtLeastOneChallengeAlive = false

            if (challengerData.isWasted) return // Do not pursue if user is wasted already.

            const challengesCollection = await challengerDoc.ref.collection("challenges").get();

            for (const challengeDoc of challengesCollection.docs) {
                const challengeData = challengeDoc.data()

                // 1. Update challenge's failures count.
                if (!challengeData.isCompleted) {
                    const incrementedFailures = (challengeData.failures || 0) + 1
                    await challengeDoc.ref.update({ failures: incrementedFailures })

                    if (incrementedFailures <= challengeData.maxFailures) {
                        hasAtLeastOneChallengeAlive = true
                    }
                }

                // 2. Then reset challenge's isCompleted status.
                await challengeDoc.ref.update({ isCompleted: false });
            }

            // Update challenger's isWasted state if needed.
            if (!hasAtLeastOneChallengeAlive) {
                challengerDoc.ref.update({ isWasted: true })
            }
        }
    });
