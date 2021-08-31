import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../style/style.dart';

class FBPhoneFormField extends TextFormField {
  FBPhoneFormField({
    String? initialValue,
    ValueChanged<String>? onChanged,
    required ValueChanged<Country> onChangedCountry,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    String? hintText,
  }) : super(
          initialValue: initialValue,
          onChanged: onChanged,
          onSaved: onSaved,
          validator: validator,
          inputFormatters: [
            phoneFormatter,
          ],
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefix: CountryPickerDropdown(
              isDense: true,
              initialValue: 'BR',
              itemBuilder: (c) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8.0),
                  CountryPickerUtils.getDefaultFlagImage(c),
                  const SizedBox(width: 8.0),
                  Text('+${c.phoneCode}'),
                ],
              ),
              itemFilter: (c) => true,
              priorityList: [
                CountryPickerUtils.getCountryByIsoCode('BR'),
                CountryPickerUtils.getCountryByIsoCode('US'),
              ],
              sortComparator: (a, b) => a.isoCode.compareTo(b.isoCode),
              onValuePicked: onChangedCountry,
            ),
            hintText: hintText,
            hintStyle: smallBodyRegular.copyWith(
              color: neutralTextLight,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        );
}
