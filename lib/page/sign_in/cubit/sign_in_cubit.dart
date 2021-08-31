import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/repository/repository.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required this.repository,
  }) : super(const SignInInitial());

  final SignInRepository repository;

  bool get isSignInFormComplete =>
      state.login.isNotEmpty && state.password.isNotEmpty;
  bool get shouldObscurePassword => state.hidePassword;

  void onChangedLogin(String login) {
    emit(
      SignInLoginChanged(
        login: login,
        password: state.password,
        hidePassword: state.hidePassword,
      ),
    );
  }

  void onChangedPassword(String password) {
    emit(
      SignInPasswordChanged(
        login: state.login,
        password: password,
        hidePassword: state.hidePassword,
      ),
    );
  }

  void onShowHidePassword() {
    emit(
      SignInShowHidePasswordChanged(
        login: state.login,
        password: state.password,
        hidePassword: !state.hidePassword,
      ),
    );
  }

  Future<void> signInUser() async {
    emit(
      SignInLoading(
        login: state.login,
        password: state.password,
        hidePassword: state.hidePassword,
      ),
    );
    try {
      await repository.signInUser(login: state.login, password: state.password);
      emit(
        const SignInSuccess(),
      );
    } on Exception {
      emit(
        SignInFailed(
          login: state.login,
          password: state.password,
          hidePassword: state.hidePassword,
        ),
      );
    }
  }
}
