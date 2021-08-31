import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

class CompanyAssociationPage extends StatelessWidget {
  const CompanyAssociationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      withAppBar: false,
      children: [
        const Spacer(),
        Image.asset('assets/logo.png'),
        const SizedBox(height: 18),
        Text(
          Strings.justOneMoreThing,
          style: smallTitleBold.copyWith(
            color: neutralTextRegular,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 18),
        Text(
          Strings.companyAssociationQuestion,
          style: bodyRegular.copyWith(
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 48),
        FBSolidButton(
          onPressed: () {},
          child: Text(
            Strings.workAtPartnerCompany,
            style: bodyRegular,
          ),
        ),
        const SizedBox(height: 18),
        FBOutlinedButton(
          onPressed: () {},
          child: Text(
            Strings.doNotWorkAtPartnerCompany,
            style: bodyRegular.copyWith(
              color: accentMain,
            ),
          ),
        ),
        const SizedBox(height: 18),
        Center(
          child: Text(
            Strings.doNotKnowIfCompanyPartner,
            style: bodyLink,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
