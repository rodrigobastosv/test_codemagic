import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../style/style.dart';

class FBTextFormField extends TextFormField {
  FBTextFormField({
    String? initialValue,
    ValueChanged<String>? onChanged,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? hintText,
    List<TextInputFormatter>? inputFormatters,
    bool obscureText = false,
  }) : super(
          initialValue: initialValue,
          onChanged: onChanged,
          onSaved: onSaved,
          validator: validator,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
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
