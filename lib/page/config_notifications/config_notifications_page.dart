import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../core/core.dart';

class ConfigNotificationsPage extends StatelessWidget {
  const ConfigNotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      title: Strings.notifications,
      withBackIcon: true,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            itemBuilder: (_, i) {
              switch (i) {
                case 0:
                  return _NotificationTile(
                    label: Strings.newTest,
                    value: true,
                    onChanged: (value) {},
                  );
                case 1:
                  return _NotificationTile(
                    label: Strings.newPost,
                    value: true,
                    onChanged: (value) {},
                  );
                case 2:
                  return _NotificationTile(
                    label: Strings.newContribution,
                    value: true,
                    onChanged: (value) {},
                  );
                case 3:
                  return _NotificationTile(
                    label: Strings.newContributionResponse,
                    value: true,
                    onChanged: (value) {},
                  );
                case 4:
                  return _NotificationTile(
                    label: Strings.newContributionReaction,
                    value: true,
                    onChanged: (value) {},
                  );
                case 5:
                  return _NotificationTile(
                    label: Strings.gratitudeFlower,
                    value: true,
                    onChanged: (value) {},
                  );
                case 6:
                  return _NotificationTile(
                    label: Strings.interactionBlocked,
                    value: true,
                    onChanged: (value) {},
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
            separatorBuilder: (_, i) => const Divider(),
            itemCount: 7,
          ),
        ),
      ],
    );
  }
}

class _NotificationTile extends StatelessWidget {
  const _NotificationTile({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: CupertinoSwitch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.green,
      ),
    );
  }
}
