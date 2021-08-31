import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';
import '../sms_validation/sms_validation.dart';
import 'confirm_access_code.dart';

class ConfirmAccessCodePage extends StatelessWidget {
  ConfirmAccessCodePage({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;
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
    return BlocConsumer<ConfirmAccessCodeCubit, ConfirmAccessCodeState>(
      listener: (_, state) {
        if (state is ConfirmAccessCodeSuccess) {
          print('NAVIGATE');
        } else if (state is ConfirmAccessCodeFailed) {
          showDialog(
            context: context,
            builder: (_) => getInvalidCodeDialog(context),
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
              text: Strings.emailSend,
              style: bodyRegular.copyWith(
                color: neutralTextRegular,
              ),
              children: [
                TextSpan(
                  text: ' $email',
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
            fieldsCount: 6,
            autofocus: true,
            onChanged: context.read<ConfirmAccessCodeCubit>().changeAccessCode,
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
          Center(
            child: Text(
              Strings.didNotReceiveCode,
              style: bodyLink,
            ),
          ),
          const SizedBox(height: 18),
          FBSolidButton(
            onPressed: context.watch<ConfirmAccessCodeCubit>().isCodeComplete
                ? () =>
                    context.read<ConfirmAccessCodeCubit>().validateAccessCode()
                : null,
            isLoading: state is ConfirmAccessCodeCubit,
            child: Text(
              Strings.goOn,
              style: bodyRegular,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
