import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'config_notifications_state.dart';

class ConfigNotificationsCubit extends Cubit<ConfigNotificationsState> {
  ConfigNotificationsCubit() : super(ConfigNotificationsInitial());
}
