import 'package:flutter/material.dart';

import '../component.dart';

class FBScaffold extends StatelessWidget {
  const FBScaffold({
    Key? key,
    this.title,
    this.withBackIcon = false,
    this.withMore = true,
    this.withAppBar = true,
    required this.children,
  }) : super(key: key);

  final String? title;
  final bool withBackIcon;
  final bool withMore;
  final bool withAppBar;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: withAppBar
          ? getFBAppBar(
              context: context,
              title: title,
              withMore: withMore,
              withBackIcon: withBackIcon,
            )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: children!,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
