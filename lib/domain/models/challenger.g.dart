// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengerImpl _$$ChallengerImplFromJson(Map<String, dynamic> json) =>
    _$ChallengerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      challenges: (json['challenges'] as List<dynamic>)
          .map((e) => Challenge.fromJson(e as Map<String, dynamic>))
          .toList(),
      failures: (json['failures'] as num).toInt(),
    );

Map<String, dynamic> _$$ChallengerImplToJson(_$ChallengerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'challenges': instance.challenges,
      'failures': instance.failures,
    };

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'completed': instance.completed,
    };
