abstract class SmsValidationRepository {
  Future<bool> validateSmsCode({
    required String phoneNumber,
    required String verificationCode,
  });

  Future<bool> resendSmsCode({
    required String phoneNumber,
  });
}
