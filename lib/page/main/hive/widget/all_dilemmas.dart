import 'package:flutter/material.dart';

import 'widget.dart';

class AllDilemas extends StatelessWidget {
  const AllDilemas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DilemmaCard(),
        DilemmaCard(),
        DilemmaCard(),
        DilemmaCard(),
        DilemmaCard(),
      ],
    );
  }
}