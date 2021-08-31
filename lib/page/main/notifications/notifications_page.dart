import 'package:flutter/material.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../../../style/style.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      title: '${Strings.notifications} (3)',
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 13,
            separatorBuilder: (_, i) => const Divider(),
            itemBuilder: (_, i) => ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text.rich(
                TextSpan(
                  text: Strings.theBeename,
                  style: bodyRegular.copyWith(
                    color: neutralTextRegular,
                  ),
                  children: [
                    TextSpan(
                      text: ' autoastral ',
                      style: bodyBold.copyWith(
                        color: neutralTextRegular,
                      ),
                    ),
                    TextSpan(
                      text: Strings.likedYour,
                      style: bodyRegular.copyWith(
                        color: neutralTextRegular,
                      ),
                    ),
                    TextSpan(
                      text: ' ${Strings.comment}  ',
                      style: bodyBold.copyWith(
                        color: neutralTextRegular,
                      ),
                    ),
                    TextSpan(
                      text: '${Strings.onYour} ',
                      style: bodyRegular.copyWith(
                        color: neutralTextRegular,
                      ),
                    ),
                    TextSpan(
                      text: Strings.dilemma,
                      style: bodyBold.copyWith(
                        color: neutralTextRegular,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
