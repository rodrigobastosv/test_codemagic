import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final phoneFormatter = MaskTextInputFormatter(
  mask: '(##) # ####-####',
  filter: {
    "#": RegExp('[0-9]'),
  },
);

final cpfFormatter = MaskTextInputFormatter(
  mask: '###.###.###-##',
  filter: {
    "#": RegExp('[0-9]'),
  },
);
