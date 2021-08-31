import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../page/cubit.dart';
import '../../page/page.dart';
import '../core.dart';
import '../repository/repository.dart';

class FBRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    final routeName = settings.name;

    late Widget routeWidget;
    switch (routeName) {
      case WELCOME_PAGE:
        routeWidget = const WelcomePage();
        break;
      case TERMS_AND_POLICIES_PAGE:
        routeWidget = const TermsAndPoliciesPage();
        break;
      case SIGN_IN_PAGE:
        routeWidget = BlocProvider<SignInCubit>(
          create: (context) => SignInCubit(
            repository: context.read<SignInRepository>(),
          ),
          child: const SignInPage(),
        );
        break;
      case ERROR_PAGE:
        routeWidget = const ErrorPage();
        break;
      case NO_CONNECTION_PAGE:
        routeWidget = const NoConnectionPage();
        break;
      case FAQ_PAGE:
        routeWidget = const FaqPage();
        break;
      case CONFIRM_PHONE_PAGE:
        routeWidget = BlocProvider<ConfirmPhoneCubit>(
          create: (_) => ConfirmPhoneCubit(),
          child: const ConfirmPhonePage(),
        );
        break;
      case SMS_VALIDATION_PAGE:
        final phoneNumber = args! as String;
        routeWidget = BlocProvider<SmsValidationCubit>(
          create: (context) => SmsValidationCubit(
            phoneNumber: phoneNumber,
            repository: context.read<SmsValidationRepository>(),
          ),
          child: SmsValidationPage(phoneNumber: phoneNumber),
        );
        break;
      case COMPANY_ASSOCIATION_PAGE:
        routeWidget = const CompanyAssociationPage();
        break;
      case CONFIRM_CPF_PAGE:
        routeWidget = BlocProvider<ConfirmCpfCubit>(
          create: (context) => ConfirmCpfCubit(
            repository: context.read<ConfirmCpfRepository>(),
          )..showInfoDialog(),
          child: const ConfirmCpfPage(),
        );
        break;
      case CONFIRM_ACCESS_CODE_PAGE:
        final email = args! as String;
        routeWidget = BlocProvider<ConfirmAccessCodeCubit>(
          create: (context) => ConfirmAccessCodeCubit(
            repository: context.read<ConfirmAccessCodeRepository>(),
          ),
          child: ConfirmAccessCodePage(email: email),
        );
        break;
      case SIGN_UP_PAGE:
        routeWidget = BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(
            repository: context.read<SignUpRepository>(),
          ),
          child: const SignUpPage(),
        );
        break;
      case MAIN_PAGE:
        routeWidget = const MainPage();
        break;
      case CVV_PAGE:
        routeWidget = const CvvPage();
        break;
      case PROFILE_PAGE:
        routeWidget = const ProfilePage();
        break;
      case CONFIG_NOTIFICATIONS_PAGE:
        routeWidget = const ConfigNotificationsPage();
        break;
      default:
        routeWidget = const ErrorPage();
    }

    return isAndroid()
        ? MaterialPageRoute(
            builder: (context) => routeWidget,
            settings: settings,
          )
        : CupertinoPageRoute(
            builder: (context) => routeWidget,
            settings: settings,
          );
  }
}
