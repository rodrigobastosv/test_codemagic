import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../sign_in.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signInCubit = context.read<SignInCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FBTextFormField(
          initialValue: signInCubit.state.login,
          onChanged: signInCubit.onChangedLogin,
          prefixIcon: getIcon('bee'),
          hintText: Strings.signInFormFieldHint,
        ),
        const SizedBox(height: 12),
        FBTextFormField(
          initialValue: signInCubit.state.password,
          onChanged: signInCubit.onChangedPassword,
          obscureText: context.watch<SignInCubit>().shouldObscurePassword,
          prefixIcon: getIcon('lock'),
          suffixIcon: GestureDetector(
            onTap: () => signInCubit.onShowHidePassword(),
            child: getIcon('hide'),
          ),
          hintText: Strings.password,
        ),
      ],
    );
  }
}
