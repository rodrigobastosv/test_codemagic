part of 'sign_in_cubit.dart';

abstract class SignInState extends Equatable {
  const SignInState({
    required this.login,
    required this.password,
    required this.hidePassword,
  });

  final String login;
  final String password;
  final bool hidePassword;

  @override
  List<Object> get props => [
        login,
        password,
        hidePassword,
      ];
}

class SignInInitial extends SignInState {
  const SignInInitial()
      : super(
          login: '',
          password: '',
          hidePassword: true,
        );
}

class SignInLoginChanged extends SignInState {
  const SignInLoginChanged({
    required String login,
    required String password,
    required bool hidePassword,
  }) : super(
          login: login,
          password: password,
          hidePassword: hidePassword,
        );
}

class SignInPasswordChanged extends SignInState {
  const SignInPasswordChanged({
    required String login,
    required String password,
    required bool hidePassword,
  }) : super(
          login: login,
          password: password,
          hidePassword: hidePassword,
        );
}

class SignInShowHidePasswordChanged extends SignInState {
  const SignInShowHidePasswordChanged({
    required String login,
    required String password,
    required bool hidePassword,
  }) : super(
          login: login,
          password: password,
          hidePassword: hidePassword,
        );
}

class SignInSuccess extends SignInState {
  const SignInSuccess()
      : super(
          login: '',
          password: '',
          hidePassword: true,
        );
}

class SignInFailed extends SignInState {
  const SignInFailed({
    required String login,
    required String password,
    required bool hidePassword,
  }) : super(
          login: login,
          password: password,
          hidePassword: hidePassword,
        );
}

class SignInLoading extends SignInState {
  const SignInLoading({
    required String login,
    required String password,
    required bool hidePassword,
  }) : super(
          login: login,
          password: password,
          hidePassword: hidePassword,
        );
}
