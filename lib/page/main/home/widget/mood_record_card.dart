import 'package:flutter/material.dart';

import '../../../../component/component.dart';
import '../../../../core/core.dart';
import '../../../../style/style.dart';

class MoodRecordCard extends StatelessWidget {
  const MoodRecordCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 22),
                    Text(
                      Strings.registerMood,
                      style: bodyBold.copyWith(
                        color: darkBlue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        Strings.followEvolution,
                        style: bodyRegular.copyWith(
                          color: darkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('assets/images/mood_record.png'),
              ),
            ],
          ),
          FBSolidButton(
            onPressed: () {},
            child: Text(
              Strings.howAreYouToday,
            ),
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
