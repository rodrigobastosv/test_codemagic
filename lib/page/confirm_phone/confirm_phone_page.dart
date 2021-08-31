import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/component.dart';
import '../../core/core.dart';
import '../../style/style.dart';

import 'cubit/confirm_phone_cubit.dart';

class ConfirmPhonePage extends StatelessWidget {
  const ConfirmPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmPhoneCubit, ConfirmPhoneState>(
      builder: (_, state) => FBScaffold(
        withAppBar: false,
        children: [
          const Spacer(),
          Image.asset('assets/logo.png'),
          const SizedBox(height: 18),
          Text(
            Strings.phoneConfirm,
            style: smallTitleBold.copyWith(
              color: neutralTextRegular,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 18),
          Text(
            Strings.accessChange,
            style: bodyRegular.copyWith(
              color: neutralTextRegular,
            ),
          ),
          const SizedBox(height: 58),
          FBPhoneFormField(
            hintText: Strings.confirmCellphone,
            onChanged: context.read<ConfirmPhoneCubit>().changePhoneNumber,
            onChangedCountry: (country) => context
                .read<ConfirmPhoneCubit>()
                .changeCountryCode(country.phoneCode),
          ),
          const SizedBox(height: 48),
          FBSolidButton(
            onPressed: context.watch<ConfirmPhoneCubit>().isPhoneNumberComplete
                ? () => Navigator.of(context).pushNamed(
                      SMS_VALIDATION_PAGE,
                      arguments:
                          context.read<ConfirmPhoneCubit>().state.phoneNumber,
                    )
                : null,
            child: Text(
              Strings.confirmCellphoneNumber,
              style: bodyRegular,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                Strings.whyConfirmCellphone,
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
