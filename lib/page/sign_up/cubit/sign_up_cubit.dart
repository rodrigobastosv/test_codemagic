import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../core/repository/sign_up/sign_up.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required this.repository,
  }) : super(const SignUpInitial());

  final SignUpRepository repository;

  bool get isPhoneNumberComplete => state.phoneNumber.length == 16;

  void changeCountryCode(String countryCode) {
    emit(
      SignUpCountryCodeChanged(
        countryCode: countryCode,
        phoneNumber: state.phoneNumber,
      ),
    );
  }

  void changePhoneNumber(String phoneNumber) {
    emit(
      SignUpPhoneChanged(
        countryCode: state.countryCode,
        phoneNumber: phoneNumber,
      ),
    );
  }

  Future<void> createUser() async {
    emit(
      SignUpLoading(
        countryCode: state.countryCode,
        phoneNumber: state.phoneNumber,
      ),
    );
    try {
      final sanitizedPhone = sanitizePhone(state.phoneNumber);
      final signUpSuccess = await repository.signUp(
        phoneNumber: sanitizedPhone,
        password: '123456',
      );
      if (signUpSuccess) {
        emit(
          SignUpSuccess(
            countryCode: state.countryCode,
            phoneNumber: state.phoneNumber,
          ),
        );
      } else {
        emit(
          SignUpFailed(
            countryCode: state.countryCode,
            phoneNumber: state.phoneNumber,
          ),
        );
      }
    } on Exception {
      emit(
        SignUpError(
          countryCode: state.countryCode,
          phoneNumber: state.phoneNumber,
        ),
      );
    }
  }
}
