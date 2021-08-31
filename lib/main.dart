import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/core.dart';
import 'core/repository/repository.dart';
import 'style/style.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositoriesProviders,
      child: MaterialApp(
        title: 'FriendsBee',
        debugShowCheckedModeBanner: false,
        theme: fbTheme,
        onGenerateRoute: FBRouter.generateRoutes,
        initialRoute: WELCOME_PAGE,
      ),
    );
  }
}
