import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/component.dart';
import '../../../style/style.dart';

import 'hive.dart';

class HivePage extends StatelessWidget {
  const HivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      children: [
        const Divider(),
        BlocBuilder<HiveCubit, HiveState>(
          builder: (_, state) {
            //if (state is HiveInitial) return const ExclusivePartnerView();
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                  height: 68,
                  padding: const EdgeInsets.only(bottom: 32),
                  labelColor: accentMain,
                  unselectedLabelColor: neutralTextLight,
                  indicatorColor: accentMain,
                  indicatorWeight: 3,
                  labelStyle: extraSmallTitleRegular.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tabs: const [
                  Text('todos'),
                  Text('meus desabafos'),
                ],
                views: const [
                  AllDilemas(),
                  MyDilemas(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
