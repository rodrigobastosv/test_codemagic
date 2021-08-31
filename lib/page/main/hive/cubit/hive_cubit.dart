import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/repository/repository.dart';

part 'hive_state.dart';

class HiveCubit extends Cubit<HiveState> {
  HiveCubit({
    required this.repository,
  }) : super(HiveInitial());

  final HiveRepository repository;
}
