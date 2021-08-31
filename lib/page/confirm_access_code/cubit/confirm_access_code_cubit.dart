import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/repository/repository.dart';

part 'confirm_access_code_state.dart';

class ConfirmAccessCodeCubit extends Cubit<ConfirmAccessCodeState> {
  ConfirmAccessCodeCubit({
    required this.repository,
  }) : super(const ConfirmAccessCodeInitial());

  final ConfirmAccessCodeRepository repository;

  bool get isCodeComplete => state.code.length == 6;

  void changeAccessCode(String code) {
    emit(
      ConfirmAccessCodeChanged(code),
    );
  }

  Future<void> validateAccessCode() async {
    emit(ConfirmAccessCodeLoading(state.code));

    final codeValidated = await repository.validateAccessCode(state.code);

    if (codeValidated) {
      emit(ConfirmAccessCodeSuccess(state.code));
    } else {
      emit(ConfirmAccessCodeFailed(state.code));
    }
  }
}
