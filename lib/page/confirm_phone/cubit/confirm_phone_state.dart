part of 'confirm_phone_cubit.dart';

abstract class ConfirmPhoneState extends Equatable {
  const ConfirmPhoneState({
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

class ConfirmPhoneInitial extends ConfirmPhoneState {
  const ConfirmPhoneInitial()
      : super(
          countryCode: '55',
          phoneNumber: '',
        );
}

class ConfirmPhoneCountryCodeChanged extends ConfirmPhoneState {
  const ConfirmPhoneCountryCodeChanged({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}

class ConfirmPhoneChanged extends ConfirmPhoneState {
  const ConfirmPhoneChanged({
    required String countryCode,
    required String phoneNumber,
  }) : super(countryCode: countryCode, phoneNumber: phoneNumber);
}
