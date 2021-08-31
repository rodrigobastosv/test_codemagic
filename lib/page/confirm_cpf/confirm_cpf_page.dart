import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'confirm_cpf.dart';
import 'widget/widget.dart';

class ConfirmCpfPage extends StatelessWidget {
  const ConfirmCpfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConfirmCpfCubit, ConfirmCpfState>(
      listener: (_, state) async {
        if (state is ConfirmCpfConfidentialInfoShow) {
          await showDialog(
            context: context,
            builder: (_) => getConfidentialInfoDialog(context),
            barrierDismissible: false,
          );
        } else if (state is ConfirmCpfValidated) {
          //Navigator.of(context).pushNamed(HOME_PAGE);
        }
      },
      builder: (_, state) => state is ConfirmCpfNotValidated
          ? CpfNotFoundView(cpf: state.cpf)
          : ConfirmCpfView(isLoading: state is ConfirmCpfLoading),
    );
  }
}
