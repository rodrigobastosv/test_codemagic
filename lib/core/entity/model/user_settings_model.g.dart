// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension UserSettingsModelCopyWith on UserSettingsModel {
  UserSettingsModel copyWith({
    bool? followingUp,
    bool? newAnswers,
    bool? newComments,
    bool? newDilemmas,
    bool? newInteraction,
    bool? newMessages,
    bool? newRecognition,
    bool? newTest,
    bool? time,
  }) {
    return UserSettingsModel(
      followingUp: followingUp ?? this.followingUp,
      newAnswers: newAnswers ?? this.newAnswers,
      newComments: newComments ?? this.newComments,
      newDilemmas: newDilemmas ?? this.newDilemmas,
      newInteraction: newInteraction ?? this.newInteraction,
      newMessages: newMessages ?? this.newMessages,
      newRecognition: newRecognition ?? this.newRecognition,
      newTest: newTest ?? this.newTest,
      time: time ?? this.time,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSettingsModel _$UserSettingsModelFromJson(Map<String, dynamic> json) {
  return UserSettingsModel(
    newTest: json['newTest'] as bool,
    newDilemmas: json['newDilemmas'] as bool,
    newComments: json['newComments'] as bool,
    newAnswers: json['newAnswers'] as bool,
    newInteraction: json['newInteraction'] as bool,
    newRecognition: json['newRecognition'] as bool,
    newMessages: json['newMessages'] as bool,
    followingUp: json['followingUp'] as bool,
    time: json['time'] as bool,
  );
}

Map<String, dynamic> _$UserSettingsModelToJson(UserSettingsModel instance) =>
    <String, dynamic>{
      'newTest': instance.newTest,
      'newDilemmas': instance.newDilemmas,
      'newComments': instance.newComments,
      'newAnswers': instance.newAnswers,
      'newInteraction': instance.newInteraction,
      'newRecognition': instance.newRecognition,
      'newMessages': instance.newMessages,
      'followingUp': instance.followingUp,
      'time': instance.time,
    };
