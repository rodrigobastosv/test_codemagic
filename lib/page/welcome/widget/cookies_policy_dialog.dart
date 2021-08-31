import 'package:flutter/material.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../../../style/style.dart';

AlertDialog getCookiesPolicyDialog(BuildContext context) => AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Strings.cookiesPolicy,
              style: bodyBold,
            ),
            const SizedBox(height: 6),
            Text(
              Strings.cookiesPolicyDescription,
              style: bodyRegular,
            ),
            const SizedBox(height: 16),
            FBSolidButton(
              onPressed: () => Navigator.of(context).pushNamed(SIGN_IN_PAGE),
              child: Text(
                Strings.agree,
                style: bodyRegular,
              ),
            ),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(TERMS_AND_POLICIES_PAGE),
              child: Center(
                child: Text(
                  Strings.seeTermsAndPolicies,
                  style: bodyLink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
