import 'package:kaizen/theme/app_theme.dart';
import 'package:kaizen/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:kaizen/ui/screens/login/login_screen.dart';

class MyApp extends StatelessWidget {
  final bool showLogin;

  const MyApp({required this.showLogin, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaizen',
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: showLogin ? const LoginScreen() : const HomeScreen(),
    );
  }
}
