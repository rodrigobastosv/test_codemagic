import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

import 'sign_in.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signInCubit = context.read<SignInCubit>();
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (_, state) {
        if (state is SignInSuccess) {
          Navigator.of(context).pushNamed(CONFIRM_PHONE_PAGE);
        }
      },
      builder: (_, state) => FBScaffold(
        withAppBar: false,
        children: [
            const Spacer(),
            Image.asset('assets/logo.png'),
            const SizedBox(height: 10),
            Text(
              Strings.welcomeAgain,
              style: smallTitleBold.copyWith(
                color: neutralTextRegular,
              ),
            ),
            const SizedBox(height: 18),
            const SignInForm(),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  Strings.forgotPassword,
                  textAlign: TextAlign.end,
                  style: bodyLink,
                ),
              ],
            ),
            const SizedBox(height: 36),
            FBSolidButton(
              onPressed: signInCubit.isSignInFormComplete
                  ? () => signInCubit.signInUser()
                  : null,
              isLoading: state is SignInLoading,
              child: Text(
                Strings.signIn,
                style: bodyRegular,
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text.rich(
                TextSpan(
                  text: Strings.noAccount,
                  style: bodyRegular.copyWith(
                    color: neutralTextRegular,
                  ),
                  children: [
                    TextSpan(
                      text: ' ${Strings.signUp}',
                      style: bodyLink,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.of(context).pushNamed(SIGN_UP_PAGE),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(FAQ_PAGE),
              child: Center(
                child: Text(
                  Strings.useFaqForQuestions,
                  style: bodyLink,
                ),
              ),
            ),
            const SizedBox(height: 14),
          ],
      ),
    );
  }
}
