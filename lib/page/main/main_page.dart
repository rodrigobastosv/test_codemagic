import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../core/repository/repository.dart';
import '../../style/style.dart';
import 'main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        children: [
          const HomePage(),
          BlocProvider<HiveCubit>(
            create: (context) => HiveCubit(
              repository: context.read<HiveRepository>(),
            ),
            child: const HivePage(),
          ),
          Container(color: Colors.orange),
          const NotificationsPage(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: getIcon('home'),
            title: Text(Strings.home),
            activeColor: primaryMain,
          ),
          BottomBarItem(
            icon: getIcon('hive'),
            title: Text(Strings.hive),
            activeColor: primaryMain,
          ),
          BottomBarItem(
            icon: getIcon('love'),
            title: Text(Strings.aboutMe),
            activeColor: primaryMain,
          ),
          BottomBarItem(
            icon: getIcon('notification'),
            title: Text(Strings.notifications),
            activeColor: primaryMain,
          ),
        ],
      ),
    );
  }
}
