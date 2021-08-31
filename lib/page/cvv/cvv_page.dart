import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

class CvvPage extends StatelessWidget {
  const CvvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      withBackIcon: true,
      title: Strings.cvv,
      children: [
        const SizedBox(height: 14),
        Image.asset('assets/images/cvv.png'),
        const SizedBox(height: 8),
        Text(
          Strings.cvv,
          style: smallTitleBold.copyWith(
            color: primaryMain,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          Strings.cvvInfo,
          style: bodyRegular.copyWith(
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 22),
        FBSolidButton(
          onPressed: () {},
          child: Text(Strings.callCvv),
        ),
      ],
    );
  }
}
