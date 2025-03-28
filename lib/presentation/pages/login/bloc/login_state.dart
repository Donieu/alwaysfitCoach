part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String message;

  const LoginError(this.message);

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other is LoginError && other.message == message);
  }

  @override
  int get hashCode => message.hashCode;
}
