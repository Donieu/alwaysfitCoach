part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  const LoginEvent();
}

class SignEvent extends LoginEvent {
  final String email;
  final String password;

  const SignEvent({
    required this.email,
    required this.password,
  });
}
