import 'package:dio/dio.dart';

import '../../http/http.dart';

import 'sms_validation_repository.dart';

class HttpSmsValidationRepository implements SmsValidationRepository {
  HttpSmsValidationRepository(this.client);

  final Dio client;

  @override
  Future<bool> validateSmsCode({
    required String phoneNumber,
    required String verificationCode,
  }) async {
    try {
      final response = await client.post(
        PHONE_VALIDATE_CODE,
        data: {
          'phone': phoneNumber,
          'verificationCode': verificationCode,
        },
      );
      return response.statusCode == HTTP_OK;
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<bool> resendSmsCode({required String phoneNumber}) async {
    try {
      final response = await client.post(
        PHONE_REDEEM_CODE,
        data: {
          'phone': phoneNumber,
        },
      );
      return response.statusCode == HTTP_OK;
    } on Exception {
      rethrow;
    }
  }
}
