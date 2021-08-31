import 'package:flutter/material.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../../../style/style.dart';

AlertDialog getInvalidCodeDialog(BuildContext context) => AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Strings.ops,
              style: bodyBold,
            ),
            const SizedBox(height: 6),
            Text(
              Strings.invalidCode,
              style: bodyRegular,
            ),
            const SizedBox(height: 16),
            FBSolidButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                Strings.enter,
                style: bodyRegular,
              ),
            ),
          ],
        ),
      ),
    );
