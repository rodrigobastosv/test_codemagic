import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

import 'sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (_, state) {
        if (state is SignUpSuccess) {
          Navigator.of(context).pushNamed(
            SMS_VALIDATION_PAGE,
            arguments: context.read<SignUpCubit>().state.phoneNumber,
          );
        }
      },
      builder: (_, state) => FBScaffold(
        withAppBar: false,
        children: [
          const Spacer(),
          Image.asset('assets/logo.png'),
          const SizedBox(height: 58),
          FBPhoneFormField(
            onChanged: context.read<SignUpCubit>().changePhoneNumber,
            onChangedCountry: (country) => context
                .read<SignUpCubit>()
                .changeCountryCode(country.phoneCode),
            hintText: Strings.whatCellphone,
          ),
          const SizedBox(height: 48),
          FBSolidButton(
            onPressed: context.watch<SignUpCubit>().isPhoneNumberComplete
                ? () async => context.read<SignUpCubit>().createUser()
                : null,
            isLoading: state is SignUpLoading,
            child: Text(
              Strings.next,
              style: bodyRegular,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                Strings.whyUseCellphone,
                style: bodyLink,
              ),
            ),
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
