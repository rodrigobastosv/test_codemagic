import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      children: [
        const SizedBox(height: 22),
        Text(
          Strings.somethingWentWrong,
          style: extraSmallTitleBold.copyWith(
            color: primaryMain,
          ),
        ),
        const SizedBox(height: 38),
        Image.asset('assets/error.png'),
        const SizedBox(height: 46),
        Center(
          child: Text(
            Strings.backToHome,
            style: bodyRegular.copyWith(
              color: accentMain,
            ),
          ),
        ),
      ],
    );
  }
}
