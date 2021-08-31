part of 'confirm_access_code_cubit.dart';

abstract class ConfirmAccessCodeState extends Equatable {
  const ConfirmAccessCodeState(this.code);

  final String code;

  @override
  List<Object> get props => [
    code,
  ];
}

class ConfirmAccessCodeInitial extends ConfirmAccessCodeState {
  const ConfirmAccessCodeInitial() : super('');
}

class ConfirmAccessCodeChanged extends ConfirmAccessCodeState {
  const ConfirmAccessCodeChanged(String code) : super(code);
}

class ConfirmAccessCodeSuccess extends ConfirmAccessCodeState {
  const ConfirmAccessCodeSuccess(String code) : super(code);
}

class ConfirmAccessCodeFailed extends ConfirmAccessCodeState {
  const ConfirmAccessCodeFailed(String code) : super(code);
}

class ConfirmAccessCodeLoading extends ConfirmAccessCodeState {
  const ConfirmAccessCodeLoading(String code) : super(code);
}
