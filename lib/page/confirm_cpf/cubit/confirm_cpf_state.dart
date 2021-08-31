part of 'confirm_cpf_cubit.dart';

abstract class ConfirmCpfState extends Equatable {
  const ConfirmCpfState(this.cpf);

  final String cpf;

  @override
  List<Object> get props => [
    cpf,
  ];
}

class ConfirmCpfInitial extends ConfirmCpfState {
  const ConfirmCpfInitial() : super('');
}

class ConfirmCpfChanged extends ConfirmCpfState {
  const ConfirmCpfChanged(String cpf) : super(cpf);
}

class ConfirmCpfConfidentialInfoShow extends ConfirmCpfState {
  const ConfirmCpfConfidentialInfoShow(String cpf) : super(cpf);
}

class ConfirmCpfValidated extends ConfirmCpfState {
  const ConfirmCpfValidated(String cpf) : super(cpf);
}

class ConfirmCpfNotValidated extends ConfirmCpfState {
  const ConfirmCpfNotValidated(String cpf) : super(cpf);
}

class ConfirmCpfLoading extends ConfirmCpfState {
  const ConfirmCpfLoading(String cpf) : super(cpf);
}