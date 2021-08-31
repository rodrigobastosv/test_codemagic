// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension UserModelCopyWith on UserModel {
  UserModel copyWith({
    String? accessToken,
    int? avatarId,
    String? beeName,
    String? birthDate,
    String? document,
    String? email,
    bool? emailConfirmed,
    int? expiresIn,
    int? id,
    String? phone,
    bool? phoneConfirmed,
    ProfileModel? profile,
    bool? profileCompleted,
    int? profileId,
    String? pushNotificationToken,
    UserSettingsModel? settings,
    String? urlAvatar,
  }) {
    return UserModel(
      accessToken: accessToken ?? this.accessToken,
      avatarId: avatarId ?? this.avatarId,
      beeName: beeName ?? this.beeName,
      birthDate: birthDate ?? this.birthDate,
      document: document ?? this.document,
      email: email ?? this.email,
      emailConfirmed: emailConfirmed ?? this.emailConfirmed,
      expiresIn: expiresIn ?? this.expiresIn,
      id: id ?? this.id,
      phone: phone ?? this.phone,
      phoneConfirmed: phoneConfirmed ?? this.phoneConfirmed,
      profile: profile ?? this.profile,
      profileCompleted: profileCompleted ?? this.profileCompleted,
      profileId: profileId ?? this.profileId,
      pushNotificationToken:
          pushNotificationToken ?? this.pushNotificationToken,
      settings: settings ?? this.settings,
      urlAvatar: urlAvatar ?? this.urlAvatar,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    id: json['id'] as int,
    beeName: json['beeName'] as String?,
    accessToken: json['accessToken'] as String,
    expiresIn: json['expiresIn'] as int,
    pushNotificationToken: json['pushNotificationToken'] as String?,
    avatarId: json['avatarId'] as int,
    urlAvatar: json['urlAvatar'] as String,
    emailConfirmed: json['emailConfirmed'] as bool,
    document: json['document'] as String,
    email: json['email'] as String,
    birthDate: json['birthDate'] as String,
    phone: json['phone'] as String,
    phoneConfirmed: json['phoneConfirmed'] as bool,
    profileCompleted: json['profileCompleted'] as bool,
    profileId: json['profileId'] as int,
    profile: ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    settings:
        UserSettingsModel.fromJson(json['settings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'beeName': instance.beeName,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'pushNotificationToken': instance.pushNotificationToken,
      'avatarId': instance.avatarId,
      'urlAvatar': instance.urlAvatar,
      'emailConfirmed': instance.emailConfirmed,
      'document': instance.document,
      'email': instance.email,
      'birthDate': instance.birthDate,
      'phone': instance.phone,
      'phoneConfirmed': instance.phoneConfirmed,
      'profileCompleted': instance.profileCompleted,
      'profileId': instance.profileId,
      'profile': instance.profile,
      'settings': instance.settings,
    };
