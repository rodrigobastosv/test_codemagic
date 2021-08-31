import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'hive/hive.dart';
import 'repository.dart';

final _dio = Dio()
  ..options.baseUrl = 'https://new-api.test.friendsbee.com/api';

final repositoriesProviders = [
  RepositoryProvider<SignInRepository>(
    create: (_) => MockSignInRepository(),
  ),
  RepositoryProvider<SignUpRepository>(
    create: (_) => HttpSignUpRepository(_dio),
  ),
  RepositoryProvider<SmsValidationRepository>(
    create: (_) => HttpSmsValidationRepository(_dio),
  ),
  RepositoryProvider<ConfirmCpfRepository>(
    create: (_) => MockConfirmCpfRepository(),
  ),
  RepositoryProvider<ConfirmAccessCodeRepository>(
    create: (_) => MockConfirmAccessCodeRepository(),
  ),
  RepositoryProvider<HiveRepository>(
    create: (_) => MockHiveRepository(),
  ),
];
