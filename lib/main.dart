import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/providers/check_users_logged_in_use_case_provider.dart';
import 'package:kaizen/firebase_options.dart';

import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  final container = ProviderContainer();
  bool? hasAccount = false;
  try {
    hasAccount = await container.read(checkUserLoggedInUseCaseProvider).call();
  } catch(e) {
    debugPrint("DEBUG: Failed to retrieve account with error: $e");
    hasAccount = false;
  }

  runApp(ProviderScope(child: MyApp(showLogin: !hasAccount)));
}
