import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

class NoConnectionPage extends StatelessWidget {
  const NoConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      children: [
        const SizedBox(height: 22),
        Text(
          Strings.noConnectionQuestion,
          style: extraSmallTitleBold.copyWith(
            color: primaryMain,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          Strings.verifyConnection,
          style: bodyRegular.copyWith(
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 38),
        Image.asset('assets/no_connection.png'),
        const SizedBox(height: 46),
        FBSolidButton(
          onPressed: () {},
          child: Text(
            Strings.tryAgain,
            style: bodyRegular,
          ),
        ),
      ],
    );
  }
}
