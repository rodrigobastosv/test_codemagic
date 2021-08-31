import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

class TermsAndPoliciesPage extends StatelessWidget {
  const TermsAndPoliciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      title: Strings.termsAndPolicies,
      withBackIcon: true,
      children: [
          Text(
            Strings.exclusiveArea,
            style: bodyBold.copyWith(
              color: primaryMain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            Strings.fakeText,
            style: bodyRegular,
          ),
        ],
    );
  }
}
