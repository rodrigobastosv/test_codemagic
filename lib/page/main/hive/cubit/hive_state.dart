part of 'hive_cubit.dart';

abstract class HiveState extends Equatable {
  const HiveState();

  @override
  List<Object> get props => [];
}

class HiveInitial extends HiveState {}

class HiveExclusivePartners extends HiveState {}
