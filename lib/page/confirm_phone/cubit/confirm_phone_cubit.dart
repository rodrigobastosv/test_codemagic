import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'confirm_phone_state.dart';

class ConfirmPhoneCubit extends Cubit<ConfirmPhoneState> {
  ConfirmPhoneCubit() : super(const ConfirmPhoneInitial());

  bool get isPhoneNumberComplete => state.phoneNumber.length == 16;

  void changeCountryCode(String countryCode) {
    emit(
      ConfirmPhoneCountryCodeChanged(
        countryCode: countryCode,
        phoneNumber: state.phoneNumber,
      ),
    );
  }

  void changePhoneNumber(String phoneNumber) {
    emit(
      ConfirmPhoneChanged(
        countryCode: state.countryCode,
        phoneNumber: phoneNumber,
      ),
    );
  }
}
