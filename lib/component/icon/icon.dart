import 'package:flutter/material.dart';

import '../../style/style.dart';

Image getIcon(
  String iconName, {
  Color? iconColor = primaryMain,
}) {
  return Image.asset(
    'assets/icons/fb_${iconName}_icon.png',
    color: iconColor,
  );
}
