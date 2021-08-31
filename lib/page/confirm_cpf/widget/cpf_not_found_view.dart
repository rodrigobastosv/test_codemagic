import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/component.dart';
import '../../../core/core.dart';
import '../../../style/style.dart';
import '../confirm_cpf.dart';

class CpfNotFoundView extends StatefulWidget {
  const CpfNotFoundView({
    Key? key,
    required this.cpf,
  }) : super(key: key);

  final String cpf;

  @override
  _CpfNotFoundViewState createState() => _CpfNotFoundViewState();
}

class _CpfNotFoundViewState extends State<CpfNotFoundView> {
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: FBScaffold(
        withAppBar: false,
        children: [
          const Spacer(),
          Image.asset('assets/logo.png'),
          const SizedBox(height: 18),
          Text(
            widget.cpf,
            style: smallTitleBold.copyWith(
              color: neutralTextRegular,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 18),
          Text(
            Strings.cpfNotFound,
            style: bodyRegular.copyWith(
              color: neutralTextRegular,
            ),
          ),
          const SizedBox(height: 18),
          GestureDetector(
            onTap: context.read<ConfirmCpfCubit>().editCpf,
            child: Center(
              child: Text(
                Strings.editCpf,
                style: bodyLink,
              ),
            ),
          ),
          const SizedBox(height: 18),
          FBTextFormField(
            prefixIcon: getIcon('email'),
            hintText: Strings.corporativeEmail,
            validator: (email) {
              if (email == null || email.isEmpty) {
                return Strings.requiredField;
              }
              return isValidEmail(email) ? null : Strings.invalidEmail;
            },
            onSaved: (email) => Navigator.of(context).pushNamed(
              CONFIRM_ACCESS_CODE_PAGE,
              arguments: email,
            ),
          ),
          const SizedBox(height: 36),
          FBSolidButton(
            onPressed: () {
              final form = _formKey.currentState!;
              if (form.validate()) {
                form.save();
              }
            },
            child: Text(
              Strings.sendEmailAndEnter,
              style: bodyRegular.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                Strings.enterOpenFb,
                style: bodyLink,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
