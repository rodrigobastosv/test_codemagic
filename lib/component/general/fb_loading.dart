import 'package:flutter/material.dart';
import 'package:rive_loading/rive_loading.dart';

class FBLoading extends StatelessWidget {
  const FBLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
        height: 120,
        width: 120,
          child: RiveLoading(
            name: 'assets/animations/bee.riv',
            loopAnimation: 'Bee',
            onError: (_, __) {},
            onSuccess: (_) {},
          ),
        ),
      ),
    );
  }
}
