import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../style/style.dart';
import '../component.dart';

AppBar getFBAppBar({
  required BuildContext context,
  String? title,
  bool withBackIcon = false,
  bool withMore = true,
}) =>
    AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: withBackIcon
          ? GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SizedBox(
                height: 30,
                width: 30,
                child: getIcon('back', iconColor: accentMain),
              ),
            )
          : getIcon('bee'),
      title: Text(
        title ?? '',
        style: bodyLink.copyWith(
          color: neutralTextRegular,
        ),
      ),
      centerTitle: true,
      actions: [
        if (withMore)
          PopupMenuButton<MenuItem>(
            onSelected: (menuItem) {
              if (menuItem == MenuItem.config) {
                Navigator.of(context).pushNamed(CONFIG_NOTIFICATIONS_PAGE);
              } else if (menuItem == MenuItem.cvv) {
                Navigator.of(context).pushNamed(CVV_PAGE);
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  textStyle: smallBodyLink,
                  value: MenuItem.config,
                  child: Text('configurações'),
                ),
                const PopupMenuItem(
                  textStyle: smallBodyLink,
                  value: MenuItem.cvv,
                  child: Text('CVV'),
                )
              ];
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Strings.more,
                  style: const TextStyle(
                    color: accentMain,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.more_vert,
                  color: accentMain,
                ),
              ],
            ),
          ),
      ],
      elevation: 0,
    );
