import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../core/repository/sms_validation/sms_validation.dart';

part 'sms_validation_state.dart';

class SmsValidationCubit extends Cubit<SmsValidationState> {
  SmsValidationCubit({
    required this.phoneNumber,
    required this.repository,
  }) : super(const SmsValidationInitial());

  final String phoneNumber;
  final SmsValidationRepository repository;

  bool get isCodeComplete => state.code.length == 4;

  void changeSmsCode(String code) {
    emit(
      SmsValidationCodeChanged(code),
    );
  }

  Future<void> validateSmsCode() async {
    emit(
      SmsValidationCodeLoading(state.code),
    );

    try {
      final codeValidated = await repository.validateSmsCode(
        phoneNumber: sanitizePhone(phoneNumber),
        verificationCode: state.code,
      );

      if (codeValidated) {
        emit(
          SmsValidationCodeSuccess(state.code),
        );
      } else {
        emit(
          SmsValidationCodeFailed(state.code),
        );
      }
    } on Exception {
      emit(
        SmsValidationCodeFailed(state.code),
      );
    }
  }

  Future<void> resendSmsCode() async {
    emit(
      SmsValidationCodeLoading(state.code),
    );

    try {
      final sended = await repository.resendSmsCode(
        phoneNumber: sanitizePhone(phoneNumber),
      );

      if (sended) {
        emit(
          SmsValidationResendCodeSuccess(state.code),
        );
      } else {
        emit(
          SmsValidationResendCodeError(state.code),
        );
      }
    } on Exception {
      emit(
        SmsValidationResendCodeError(state.code),
      );
    }
  }
}
