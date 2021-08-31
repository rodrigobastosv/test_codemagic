import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';
import 'widget/widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 28),
            const WelcomeCarousel(),
            const SizedBox(height: 38),
            FBSolidButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => getCookiesPolicyDialog(context),
                );
              },
              child: Text(
                Strings.signIn,
                style: bodyRegular,
              ),
            ),
            const SizedBox(height: 16),
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
            Center(
              child: Text(
                Strings.whyCreateAccount,
                style: bodyLink,
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
