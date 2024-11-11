// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenger_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChallengerCard {
  String get challengerName => throw _privateConstructorUsedError;
  List<Challenge> get challenges => throw _privateConstructorUsedError;
  int get failureCount => throw _privateConstructorUsedError;

  /// Create a copy of ChallengerCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengerCardCopyWith<ChallengerCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengerCardCopyWith<$Res> {
  factory $ChallengerCardCopyWith(
          ChallengerCard value, $Res Function(ChallengerCard) then) =
      _$ChallengerCardCopyWithImpl<$Res, ChallengerCard>;
  @useResult
  $Res call(
      {String challengerName, List<Challenge> challenges, int failureCount});
}

/// @nodoc
class _$ChallengerCardCopyWithImpl<$Res, $Val extends ChallengerCard>
    implements $ChallengerCardCopyWith<$Res> {
  _$ChallengerCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengerCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengerName = null,
    Object? challenges = null,
    Object? failureCount = null,
  }) {
    return _then(_value.copyWith(
      challengerName: null == challengerName
          ? _value.challengerName
          : challengerName // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      failureCount: null == failureCount
          ? _value.failureCount
          : failureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengerCardImplCopyWith<$Res>
    implements $ChallengerCardCopyWith<$Res> {
  factory _$$ChallengerCardImplCopyWith(_$ChallengerCardImpl value,
          $Res Function(_$ChallengerCardImpl) then) =
      __$$ChallengerCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challengerName, List<Challenge> challenges, int failureCount});
}

/// @nodoc
class __$$ChallengerCardImplCopyWithImpl<$Res>
    extends _$ChallengerCardCopyWithImpl<$Res, _$ChallengerCardImpl>
    implements _$$ChallengerCardImplCopyWith<$Res> {
  __$$ChallengerCardImplCopyWithImpl(
      _$ChallengerCardImpl _value, $Res Function(_$ChallengerCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengerCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengerName = null,
    Object? challenges = null,
    Object? failureCount = null,
  }) {
    return _then(_$ChallengerCardImpl(
      challengerName: null == challengerName
          ? _value.challengerName
          : challengerName // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      failureCount: null == failureCount
          ? _value.failureCount
          : failureCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChallengerCardImpl implements _ChallengerCard {
  const _$ChallengerCardImpl(
      {required this.challengerName,
      required final List<Challenge> challenges,
      required this.failureCount})
      : _challenges = challenges;

  @override
  final String challengerName;
  final List<Challenge> _challenges;
  @override
  List<Challenge> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  @override
  final int failureCount;

  @override
  String toString() {
    return 'ChallengerCard(challengerName: $challengerName, challenges: $challenges, failureCount: $failureCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengerCardImpl &&
            (identical(other.challengerName, challengerName) ||
                other.challengerName == challengerName) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            (identical(other.failureCount, failureCount) ||
                other.failureCount == failureCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, challengerName,
      const DeepCollectionEquality().hash(_challenges), failureCount);

  /// Create a copy of ChallengerCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengerCardImplCopyWith<_$ChallengerCardImpl> get copyWith =>
      __$$ChallengerCardImplCopyWithImpl<_$ChallengerCardImpl>(
          this, _$identity);
}

abstract class _ChallengerCard implements ChallengerCard {
  const factory _ChallengerCard(
      {required final String challengerName,
      required final List<Challenge> challenges,
      required final int failureCount}) = _$ChallengerCardImpl;

  @override
  String get challengerName;
  @override
  List<Challenge> get challenges;
  @override
  int get failureCount;

  /// Create a copy of ChallengerCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengerCardImplCopyWith<_$ChallengerCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Challenge {
  String get name => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res, Challenge>;
  @useResult
  $Res call({String name, bool isDone});
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res, $Val extends Challenge>
    implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeImplCopyWith<$Res>
    implements $ChallengeCopyWith<$Res> {
  factory _$$ChallengeImplCopyWith(
          _$ChallengeImpl value, $Res Function(_$ChallengeImpl) then) =
      __$$ChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isDone});
}

/// @nodoc
class __$$ChallengeImplCopyWithImpl<$Res>
    extends _$ChallengeCopyWithImpl<$Res, _$ChallengeImpl>
    implements _$$ChallengeImplCopyWith<$Res> {
  __$$ChallengeImplCopyWithImpl(
      _$ChallengeImpl _value, $Res Function(_$ChallengeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isDone = null,
  }) {
    return _then(_$ChallengeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl({required this.name, required this.isDone});

  @override
  final String name;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'Challenge(name: $name, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isDone);

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      __$$ChallengeImplCopyWithImpl<_$ChallengeImpl>(this, _$identity);
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      {required final String name,
      required final bool isDone}) = _$ChallengeImpl;

  @override
  String get name;
  @override
  bool get isDone;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
