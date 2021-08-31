import 'package:flutter/material.dart';

import '../../../../component/component.dart';
import '../../../../style/style.dart';

class DilemmaCard extends StatelessWidget {
  const DilemmaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Row(
                children: [
                  Text(
                    'Kimberly',
                    style: smallBodyBold.copyWith(
                      color: accentMain,
                    ),
                  ),
                  const SizedBox(width: 6),
                  getIcon('flor', iconColor: accentMain),
                  const SizedBox(width: 3),
                  Text(
                    '5',
                    textAlign: TextAlign.start,
                    style: smallBodyBold.copyWith(
                      color: accentMain,
                    ),
                  ),
                  const SizedBox(width: 3),
                  getIcon('dot', iconColor: accentMain),
                  const SizedBox(width: 3),
                  Text(
                    '12:03',
                    style: smallBodyBold.copyWith(
                      color: accentMain,
                    ),
                  ),
                  const SizedBox(width: 3),
                  getIcon('dot', iconColor: accentMain),
                  const SizedBox(width: 3),
                  getIcon('chat', iconColor: accentMain),
                  const SizedBox(width: 3),
                  Text(
                    '32',
                    style: smallBodyBold.copyWith(
                      color: accentMain,
                    ),
                  ),
                ],
              ),
              subtitle: SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text(
                      'relacionamento',
                      style: extraSmallBodyRegular.copyWith(
                        color: primaryMain,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'emoções',
                      style: extraSmallBodyRegular.copyWith(
                        color: primaryMain,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'relacionamento',
                      style: extraSmallBodyRegular.copyWith(
                        color: primaryMain,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'emoções',
                      style: extraSmallBodyRegular.copyWith(
                        color: primaryMain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 12),
              child: Text(
                'O que é felicidade? Eu sempre pensei que só seria feliz quando conhecesse alguém que me fizesse feliz, mas muita coisa Eu sempre pensei que só seria feliz quando conhecesse alguém me fizesse feliz mas quando conhecesse alguém...',
                style: bodyRegular.copyWith(
                  color: neutralTextRegular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
