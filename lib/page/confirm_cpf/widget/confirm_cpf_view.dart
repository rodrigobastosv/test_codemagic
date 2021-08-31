import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../../../style/style.dart';

import '../confirm_cpf.dart';

class ConfirmCpfView extends StatelessWidget {
  const ConfirmCpfView({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FBScaffold(
      withAppBar: false,
      children: [
        const Spacer(),
        Image.asset('assets/logo.png'),
        const SizedBox(height: 18),
        Text(
          Strings.cool,
          style: smallTitleBold.copyWith(
            color: neutralTextRegular,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 18),
        Text(
          Strings.exclusiveContentAccess,
          style: bodyRegular.copyWith(
            color: neutralTextRegular,
          ),
        ),
        const SizedBox(height: 38),
        FBTextFormField(
          inputFormatters: [
            cpfFormatter,
          ],
          initialValue: context.read<ConfirmCpfCubit>().state.cpf,
          onChanged: context.read<ConfirmCpfCubit>().changeCpf,
          prefixIcon: getIcon('doc'),
          hintText: Strings.whatCpf,
        ),
        const SizedBox(height: 36),
        FBSolidButton(
          onPressed: context.watch<ConfirmCpfCubit>().isCpfComplete
              ? () => context.read<ConfirmCpfCubit>().validateCpf()
              : null,
          isLoading: isLoading,
          child: Text(
            Strings.confirmCpf,
            style: bodyRegular.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
