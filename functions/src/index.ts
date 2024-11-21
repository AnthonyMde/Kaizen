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
    { schedule: "*/2 * * * *", timeZone: "Europe/Paris" }, async () => {
        const db = admin.firestore();
        const challengersSnapshot = await db.collection("challengers").get();
        logger.info(`Found ${challengersSnapshot.size} challengers`);

        for (const challengerDoc of challengersSnapshot.docs) {
            logger.info(`Processing challenger: ${challengerDoc.id}`);
            const challengesSnapshot = await challengerDoc.ref.collection("challenges").get();
            logger.info(`Found ${challengesSnapshot.size} challenges for challenger ${challengerDoc.id}`);
            for (const challengeDoc of challengesSnapshot.docs) {
                logger.info(`Updating challenge: ${challengeDoc.id}`);
                await challengeDoc.ref.update({ isCompleted: false });
                logger.info(`Challenge ${challengeDoc.id} updated with result`);
            }
        }
        
        logger.info("V4 Challenges status updated");
    });
