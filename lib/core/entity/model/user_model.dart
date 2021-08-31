import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'user_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserModel {
  final int id;
  final String? beeName;
  final String accessToken;
  final int expiresIn;
  final String? pushNotificationToken;
  final int avatarId;
  final String urlAvatar;
  final bool emailConfirmed;
  final String document;
  final String email;
  final String birthDate;
  final String phone;
  final bool phoneConfirmed;
  final bool profileCompleted;
  final int profileId;
  final ProfileModel profile;
  final UserSettingsModel settings;

  UserModel({
    required this.id,
    this.beeName,
    required this.accessToken,
    required this.expiresIn,
    this.pushNotificationToken,
    required this.avatarId,
    required this.urlAvatar,
    required this.emailConfirmed,
    required this.document,
    required this.email,
    required this.birthDate,
    required this.phone,
    required this.phoneConfirmed,
    required this.profileCompleted,
    required this.profileId,
    required this.profile,
    required this.settings,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
