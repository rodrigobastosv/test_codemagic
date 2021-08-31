part of 'sms_validation_cubit.dart';

abstract class SmsValidationState extends Equatable {
  const SmsValidationState(this.code);

  final String code;

  @override
  List<Object> get props => [
    code,
  ];
}

class SmsValidationInitial extends SmsValidationState {
  const SmsValidationInitial() : super('');
}

class SmsValidationCodeChanged extends SmsValidationState {
  const SmsValidationCodeChanged(String code) : super(code);
}

class SmsValidationCodeSuccess extends SmsValidationState {
  const SmsValidationCodeSuccess(String code) : super(code);
}

class SmsValidationCodeFailed extends SmsValidationState {
  const SmsValidationCodeFailed(String code) : super(code);
}

class SmsValidationCodeError extends SmsValidationState {
  const SmsValidationCodeError(String code) : super(code);
}

class SmsValidationCodeLoading extends SmsValidationState {
  const SmsValidationCodeLoading(String code) : super(code);
}

class SmsValidationResendCodeSuccess extends SmsValidationState {
  const SmsValidationResendCodeSuccess(String code) : super(code);
}

class SmsValidationResendCodeError extends SmsValidationState {
  const SmsValidationResendCodeError(String code) : super(code);
}