import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../component.dart';

class FBSolidButton extends StatelessWidget {
  const FBSolidButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  final Widget child;
  final Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: accentMain,
        padding: EdgeInsets.symmetric(
          horizontal: !isLoading ? 24 : 12,
          vertical: !isLoading ? 14 : 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
      ),
      child: isLoading ? const FBLoadingIndicator() : child,
    );
  }

  factory FBSolidButton.icon({
    Key? key,
    required Widget child,
    required IconData icon,
    required Function() onPressed,
    bool isLoading,
    bool iconOnLeft,
  }) = _FBSolidButtonWithIcon;
}

class _FBSolidButtonWithIcon extends FBSolidButton {
  _FBSolidButtonWithIcon({
    Key? key,
    required Widget child,
    required IconData icon,
    required Function() onPressed,
    bool isLoading = false,
    bool iconOnLeft = true,
  }) : super(
          key: key,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconOnLeft) ...[
                Icon(icon),
                const SizedBox(width: 16),
              ],
              child,
              if (!iconOnLeft) ...[
                const SizedBox(width: 16),
                Icon(icon),
              ],
            ],
          ),
          onPressed: onPressed,
          isLoading: isLoading,
        );
}
