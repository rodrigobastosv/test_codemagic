import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/repository/repository.dart';

part 'confirm_cpf_state.dart';

class ConfirmCpfCubit extends Cubit<ConfirmCpfState> {
  ConfirmCpfCubit({
    required this.repository,
  }) : super(const ConfirmCpfInitial());

  final ConfirmCpfRepository repository;

  bool get isCpfComplete => state.cpf.length == 14;

  Future<void> showInfoDialog() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(
      ConfirmCpfConfidentialInfoShow(state.cpf),
    );
  }

  void changeCpf(String cpf) {
    emit(
      ConfirmCpfChanged(cpf),
    );
  }

  void editCpf() {
    emit(
      ConfirmCpfChanged(state.cpf),
    );
  }

  Future<void> validateCpf() async {
    emit(
      ConfirmCpfLoading(state.cpf),
    );

    final cpfValidated = await repository.validateCpf(state.cpf);

    if (cpfValidated) {
      emit(
        ConfirmCpfValidated(state.cpf),
      );
    } else {
      emit(
        ConfirmCpfNotValidated(state.cpf),
      );
    }
  }
}
