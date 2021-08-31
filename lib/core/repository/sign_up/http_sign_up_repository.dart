import 'package:dio/dio.dart';

import '../../http/http.dart';

import 'sign_up_repository.dart';

class HttpSignUpRepository implements SignUpRepository {
  HttpSignUpRepository(this.client);

  final Dio client;

  @override
  Future<bool> signUp(
      {required String phoneNumber, required String password}) async {
    try {
      final response = await client.post(
        CREATE,
        data: {
          'phone': phoneNumber,
          'password': password,
        },
      );
      return response.statusCode == HTTP_OK;
    } on Exception {
      rethrow;
    }
  }
}
