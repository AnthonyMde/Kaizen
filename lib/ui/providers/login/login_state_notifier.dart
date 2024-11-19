import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/errors/login_errors.dart';
import 'package:kaizen/domain/usecases/providers/login_use_case_provider.dart';

import 'login_screen_state.dart';

class LoginStateNotifier extends StateNotifier<LoginScreenState> {
  final Ref ref;

  LoginStateNotifier(this.ref) : super(LoginScreenState());

  void login(Function onComplete) async {
    state = state.copyWith(isButtonLoading: true, isLoginNameEnabled: false);

    try {
      await ref.read(loginUseCaseProvider).call(state.currentName);
      state = state.copyWith(isButtonLoading: false, isLoginNameEnabled: true);
      onComplete();
    } catch (e) {
      state = state.copyWith(
          isButtonLoading: false,
          isLoginNameEnabled: true,
          errorText: _getErrorText(e));
    }
  }

  void updateName(String name) {
    state = state.copyWith(currentName: name);
  }

  String _getErrorText(Object e) {
    if (e is LoginError) {
      return e.message;
    } else {
      return e.toString();
    }
  }
}

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, LoginScreenState>(
    (ref) => LoginStateNotifier(ref));
