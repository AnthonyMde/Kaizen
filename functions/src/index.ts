/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import * as admin from "firebase-admin";
import * as logger from "firebase-functions/logger";
import { onSchedule } from "firebase-functions/scheduler";

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

admin.initializeApp();

export const resetChallengesStatus = onSchedule(
    { schedule: "0 4 * * *", timeZone: "Europe/Paris" }, async () => {
        const db = admin.firestore();

        const challengersCollection = await db.collection("challengers").get();

        for (const challengerDoc of challengersCollection.docs) {
            const challengesCollection = await challengerDoc.ref.collection("challenges").get();

            for (const challengeDoc of challengesCollection.docs) {
                await challengeDoc.ref.update({ isCompleted: false });
            }
        }
        
        logger.info("Challenges status reset to isCompleted: false");
    });
