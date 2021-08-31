import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FBLoadingIndicator extends StatelessWidget {
  const FBLoadingIndicator({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 72,
      child: SpinKitFadingCircle(
        color: color,
        size: 30,
      ),
    );
  }
}
