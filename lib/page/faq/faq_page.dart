import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../style/style.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      title: 'FAQ',
      withBackIcon: true,
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, i) {
              return ExpansionTile(
                title: Text(
                  'essa é uma área exclusiva para colaboradores de empresas parceira',
                  style: bodyBold.copyWith(
                    color: primaryMain,
                  ),
                ),
                textColor: primaryMain,
                iconColor: accentMain,
                collapsedIconColor: accentMain,
                expandedAlignment: Alignment.center,
                childrenPadding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
                children: [
                  Text(
                    'entre com o seu CPF ou recomende a friendsBee para a sua empresa!',
                    style: bodyRegular.copyWith(
                      color: neutralTextRegular,
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (_, i) => const SizedBox(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
