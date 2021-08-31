import 'package:flutter/material.dart';

import '../../../../style/style.dart';

class SelfKnowledgeArea extends StatelessWidget {
  const SelfKnowledgeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'auto-conhecimento é tudo de bom',
          style: smallTitleBold.copyWith(
            fontSize: 22,
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SelfKnowledgeCard(
                imageAsset: 'sofrimento.png',
                message: 'você está em sofrimento mental?',
                onPressed: () {},
              ),
              SelfKnowledgeCard(
                imageAsset: 'felicidade.png',
                message: 'como está sua propensão a felicidade?',
                onPressed: () {},
              ),
              SelfKnowledgeCard(
                imageAsset: 'ansiedade.png',
                message: 'você tem ansiedade?',
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SelfKnowledgeCard extends StatelessWidget {
  const SelfKnowledgeCard({
    Key? key,
    required this.imageAsset,
    required this.message,
    required this.onPressed,
  }) : super(key: key);

  final String imageAsset;
  final String message;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: GestureDetector(
          onTap: onPressed,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/$imageAsset'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Text(
                    message,
                    style: smallBodyBold.copyWith(
                      color: accentMain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
