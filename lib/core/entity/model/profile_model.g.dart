// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension ProfileModelCopyWith on ProfileModel {
  ProfileModel copyWith({
    String? description,
    int? id,
  }) {
    return ProfileModel(
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return ProfileModel(
    id: json['id'] as int,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
    };
