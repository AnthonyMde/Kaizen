import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/ui/providers/login/login_state_notifier.dart';
import 'package:kaizen/ui/screens/home/home_screen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginStateProvider);
    final loginStateNotifier = ref.read(loginStateProvider.notifier);

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                style: Theme.of(context).textTheme.headlineMedium,
                "Who are you?"),
            const SizedBox(height: 16),
            TextField(
              onChanged: (name) => loginStateNotifier.updateName(name),
              enabled: loginState.isLoginNameEnabled,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Enter your name"),
            ),
            const SizedBox(height: 8),
            Text(
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.red),
                loginState.errorText ?? ""),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: loginState.isButtonLoading
                  ? null
                  : () =>
                      loginStateNotifier.login(() => {_onComplete(context)}),
              child: const Text("Access Kaizen"),
            ),
          ],
        )),
      ),
    );
  }

  void _onComplete(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
