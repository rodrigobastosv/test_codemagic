import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../component.dart';

class FBOutlinedButton extends StatelessWidget {
  const FBOutlinedButton({
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
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: !isLoading ? 24 : 12,
            vertical: !isLoading ? 14 : 2,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: accentMain,
            width: 3,
          ),
        ),
      ),
      child: isLoading ? const FBLoadingIndicator(color: accentMain) : child,
    );
  }

  factory FBOutlinedButton.icon({
    Key? key,
    required Widget child,
    required IconData icon,
    required Function() onPressed,
    bool isLoading,
    bool iconOnLeft,
  }) = _FBOutlinedButtonWithIcon;
}

class _FBOutlinedButtonWithIcon extends FBOutlinedButton {
  _FBOutlinedButtonWithIcon({
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
