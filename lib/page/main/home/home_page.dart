import 'package:flutter/material.dart';

import '../../../component/component.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FBScaffold(
      children: [
        MoodRecordCard(),
        SizedBox(height: 18),
        SelfKnowledgeArea(),
      ],
    );
  }
}
