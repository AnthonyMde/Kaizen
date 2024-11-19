import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  factory LoginScreenState(
      {@Default("") String currentName,
      @Default(false) bool isButtonLoading,
      @Default(true) bool isLoginNameEnabled,
      @Default("") String name,
      String? errorText}) = _LoginScreenState;
}
