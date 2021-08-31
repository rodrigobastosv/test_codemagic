import 'package:flutter/material.dart';

import '../../../../component/component.dart';
import '../../../../core/core.dart';
import '../../../../style/style.dart';

class ExclusivePartnerView extends StatelessWidget {
  const ExclusivePartnerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Strings.exclusiveArea,
          style: bodyBold.copyWith(
            color: primaryMain,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          Strings.enterCpfOrRecomendFb,
          style: bodyRegular.copyWith(
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 18),
        Image.asset('assets/images/exclusive_partner.png'),
        const SizedBox(height: 18),
        FBSolidButton(
          onPressed: () {},
          child: Text(Strings.enterCpf),
        ),
        const SizedBox(height: 14),
        Center(
          child: Text(
            Strings.recomendForMyCompany,
            style: bodyRegular.copyWith(
              color: accentMain,
            ),
          ),
        ),
      ],
    );
  }
}
