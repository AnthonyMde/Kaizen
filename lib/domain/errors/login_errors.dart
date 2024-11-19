abstract class LoginError implements Exception {
  final String message;

  LoginError(this.message);

  factory LoginError.isNameEmpty() => _IsNameEmptyError();
  factory LoginError.unauthorized() => _UnauthorizedError();

  @override
  String toString() => message;
}

class _IsNameEmptyError extends LoginError {
  _IsNameEmptyError() : super("Start typing somethin' bra");
}

class _UnauthorizedError extends LoginError {
  _UnauthorizedError() : super("You ain't authorized to this app bitch");
}
