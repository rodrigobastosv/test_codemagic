part of 'sign_up_cubit.dart';

abstract class SignUpState extends Equatable {
  const SignUpState({
    required this.countryCode,
    required this.phoneNumber,
  });

  final String countryCode;
  final String phoneNumber;

  @override
  List<Object> get props => [
        countryCode,
        phoneNumber,
      ];
}

class SignUpInitial extends SignUpState {
  const SignUpInitial() : super(countryCode: '55', phoneNumber: '');
}

class SignUpCountryCodeChanged extends SignUpState {
  const SignUpCountryCodeChanged({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class SignUpPhoneChanged extends SignUpState {
  const SignUpPhoneChanged({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class SignUpSuccess extends SignUpState {
  const SignUpSuccess({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class SignUpFailed extends SignUpState {
  const SignUpFailed({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class SignUpError extends SignUpState {
  const SignUpError({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class SignUpLoading extends SignUpState {
  const SignUpLoading({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}
