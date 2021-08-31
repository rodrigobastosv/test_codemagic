import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_settings_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserSettingsModel {
  final bool newTest;
  final bool newDilemmas;
  final bool newComments;
  final bool newAnswers;
  final bool newInteraction;
  final bool newRecognition;
  final bool newMessages;
  final bool followingUp;
  final bool time;

  UserSettingsModel({
    required this.newTest,
    required this.newDilemmas,
    required this.newComments,
    required this.newAnswers,
    required this.newInteraction,
    required this.newRecognition,
    required this.newMessages,
    required this.followingUp,
    required this.time,
  });

  factory UserSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserSettingsModelToJson(this);
}
