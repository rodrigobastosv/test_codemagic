import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';

import '../../style/style.dart';

Future<void> showErrorSnackBar(
  BuildContext context, {
  String? title,
  required String message,
}) async {
  Flushbar<Object>(
    titleText: Text(
      title ?? '',
      style: const TextStyle(
        color: neutralWhite,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    messageText: Text(
      message,
      style: const TextStyle(
        color: neutralWhite,
      ),
    ),
    backgroundColor: feedbackNegative,
    duration: const Duration(seconds: 3),
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    margin: const EdgeInsets.all(8.0),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  ).show(context);
}
