import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../style/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      title: 'Profile',
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Positioned(
                bottom: -12,
                right: -12,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            'kimberly',
            style: smallTitleBold.copyWith(
              color: primaryMain,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ProfileTextFormField(
                label: 'email',
                onPressed: () {},
              ),
              const Divider(),
              _ProfileTextFormField(
                label: 'telefone',
                onPressed: () {},
              ),
              const Divider(),
              const _ProfileTextFormField(
                label: 'empresa',
              ),
              const Divider(),
              _ProfileTextFormField(
                label: 'CPF',
                onPressed: () {},
              ),
              const Divider(),
            ],
          ),
        ),
        ListTile(
          title: Text(
            'Redefinir senha',
            style: smallBodyRegular.copyWith(
              color: neutralTextRegular,
            ),
          ),
          trailing: getIcon('forward', iconColor: accentMain),
        ),
        const Divider(),
        ListTile(
          title: Text(
            'Notificações',
            style: smallBodyRegular.copyWith(
              color: neutralTextRegular,
            ),
          ),
          trailing: getIcon('forward', iconColor: accentMain),
        ),
      ],
    );
  }
}

class _ProfileTextFormField extends StatelessWidget {
  const _ProfileTextFormField({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: smallBodyRegular.copyWith(
        color: neutralTextRegular,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: smallBodyRegular.copyWith(
          color: neutralTextLight,
        ),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        suffixIcon: onPressed != null ? GestureDetector(
          onTap: onPressed,
          child: getIcon('forward', iconColor: accentMain),
        ) : null,
      ),
    );
  }
}
