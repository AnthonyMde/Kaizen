/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import * as admin from "firebase-admin";
import * as logger from 'firebase-functions/logger';
import { onSchedule } from "firebase-functions/v2/scheduler";

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

admin.initializeApp();

export const updateChallengersChallenges = onSchedule({ schedule: "0 4 * * *", timeZone: "Europe/Paris" },
    async () => {
        const db = admin.firestore();

        try {
            const challengersCollection = await db.collection("challengers").get();

            for (const challengerDoc of challengersCollection.docs) {
                const challengerData = challengerDoc.data()
                let hasAtLeastOneChallengeAlive = false

                if (challengerData.isWasted) continue // Do not pursue if user is wasted already.

                const challengesCollection = await challengerDoc.ref.collection("challenges").get();

                for (const challengeDoc of challengesCollection.docs) {
                    const challengeData = challengeDoc.data()
                    if (challengeData.failures > challengeData.maxFailures) continue // Skip lost challenges.

                    if (!challengeData.isCompleted) {
                        const incrementedFailures = (challengeData.failures || 0) + 1

                        try {
                            await challengeDoc.ref.update({ failures: incrementedFailures });
                        } catch (error) {
                            logger.error(`Failed to update challenge ${challengeDoc.id}:`, error);
                        }

                        if (incrementedFailures <= challengeData.maxFailures) {
                            hasAtLeastOneChallengeAlive = true
                        }
                    } else {
                        await challengeDoc.ref.update({ isCompleted: false });
                        hasAtLeastOneChallengeAlive = true
                    }
                }

                // Update challenger's isWasted state if needed.
                if (!hasAtLeastOneChallengeAlive) {
                    challengerDoc.ref.update({ isWasted: true })
                }
            }
        } catch (error) {
            logger.error("Error processing challengers and challenges:", error);
        }
    });
