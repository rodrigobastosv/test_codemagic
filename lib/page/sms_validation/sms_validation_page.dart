import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

import 'cubit/sms_validation_cubit.dart';
import 'widget/widget.dart';

class SmsValidationPage extends StatelessWidget {
  SmsValidationPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(
        color: accentMain,
      ),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SmsValidationCubit, SmsValidationState>(
      listener: (_, state) {
        if (state is SmsValidationCodeSuccess) {
          Navigator.of(context).pushNamed(COMPANY_ASSOCIATION_PAGE);
        } else if (state is SmsValidationCodeFailed) {
          showDialog(
            context: context,
            builder: (_) => getInvalidCodeDialog(context),
          );
        } else if (state is SmsValidationCodeError) {
          Navigator.of(context).pushNamed(ERROR_PAGE);
        } else if (state is SmsValidationResendCodeSuccess) {
          showSuccessSnackBar(
            context,
            message: Strings.resendCodeSuccess,
          );
        } else if (state is SmsValidationResendCodeError) {
          showErrorSnackBar(
            context,
            title: Strings.errorResendCode,
            message: Strings.tryAgainLater,
          );
        }
      },
      builder: (_, state) => FBScaffold(
        withAppBar: false,
        children: [
          const Spacer(),
          Image.asset('assets/logo.png'),
          const SizedBox(height: 18),
          Text(
            Strings.almostThere,
            style: smallTitleBold.copyWith(
              color: neutralTextRegular,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 18),
          Text.rich(
            TextSpan(
              text: Strings.smsSend,
              style: bodyRegular.copyWith(
                color: neutralTextRegular,
              ),
              children: [
                TextSpan(
                  text: ' $phoneNumber',
                  style: bodyBold.copyWith(
                    color: neutralTextRegular,
                  ),
                ),
                TextSpan(
                  text: ' ${Strings.accessCode}',
                  style: bodyRegular.copyWith(
                    color: neutralTextRegular,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 58),
          PinPut(
            fieldsCount: 4,
            autofocus: true,
            onChanged: context.read<SmsValidationCubit>().changeSmsCode,
            focusNode: _pinPutFocusNode,
            controller: _pinPutController,
            submittedFieldDecoration: _pinPutDecoration.copyWith(
              borderRadius: BorderRadius.circular(20.0),
            ),
            selectedFieldDecoration: _pinPutDecoration,
            followingFieldDecoration: _pinPutDecoration.copyWith(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: accentMain.withOpacity(.5),
              ),
            ),
          ),
          const SizedBox(height: 48),
          GestureDetector(
            onTap: () async =>
                context.read<SmsValidationCubit>().resendSmsCode(),
            child: Center(
              child: Text(
                Strings.didNotReceiveCode,
                style: bodyLink,
              ),
            ),
          ),
          const SizedBox(height: 18),
          FBSolidButton(
            onPressed: context.watch<SmsValidationCubit>().isCodeComplete
                ? () => context.read<SmsValidationCubit>().validateSmsCode()
                : null,
            isLoading: state is SmsValidationCodeLoading,
            child: Text(
              Strings.goOn,
              style: bodyRegular,
            ),
          ),
          const Spacer(),
          Text(
            Strings.verifyNumberAndSignal,
            style: bodyRegular,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
