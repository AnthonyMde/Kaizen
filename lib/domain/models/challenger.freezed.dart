// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Challenger _$ChallengerFromJson(Map<String, dynamic> json) {
  return _Challenger.fromJson(json);
}

/// @nodoc
mixin _$Challenger {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Challenge> get challenges => throw _privateConstructorUsedError;
  bool get isWasted => throw _privateConstructorUsedError;

  /// Serializes this Challenger to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengerCopyWith<Challenger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengerCopyWith<$Res> {
  factory $ChallengerCopyWith(
          Challenger value, $Res Function(Challenger) then) =
      _$ChallengerCopyWithImpl<$Res, Challenger>;
  @useResult
  $Res call(
      {String id, String name, List<Challenge> challenges, bool isWasted});
}

/// @nodoc
class _$ChallengerCopyWithImpl<$Res, $Val extends Challenger>
    implements $ChallengerCopyWith<$Res> {
  _$ChallengerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? challenges = null,
    Object? isWasted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      isWasted: null == isWasted
          ? _value.isWasted
          : isWasted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengerImplCopyWith<$Res>
    implements $ChallengerCopyWith<$Res> {
  factory _$$ChallengerImplCopyWith(
          _$ChallengerImpl value, $Res Function(_$ChallengerImpl) then) =
      __$$ChallengerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, List<Challenge> challenges, bool isWasted});
}

/// @nodoc
class __$$ChallengerImplCopyWithImpl<$Res>
    extends _$ChallengerCopyWithImpl<$Res, _$ChallengerImpl>
    implements _$$ChallengerImplCopyWith<$Res> {
  __$$ChallengerImplCopyWithImpl(
      _$ChallengerImpl _value, $Res Function(_$ChallengerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? challenges = null,
    Object? isWasted = null,
  }) {
    return _then(_$ChallengerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      isWasted: null == isWasted
          ? _value.isWasted
          : isWasted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengerImpl implements _Challenger {
  const _$ChallengerImpl(
      {required this.id,
      required this.name,
      required final List<Challenge> challenges,
      required this.isWasted})
      : _challenges = challenges;

  factory _$ChallengerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Challenge> _challenges;
  @override
  List<Challenge> get challenges {
    if (_challenges is EqualUnmodifiableListView) return _challenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_challenges);
  }

  @override
  final bool isWasted;

  @override
  String toString() {
    return 'Challenger(id: $id, name: $name, challenges: $challenges, isWasted: $isWasted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            (identical(other.isWasted, isWasted) ||
                other.isWasted == isWasted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_challenges), isWasted);

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengerImplCopyWith<_$ChallengerImpl> get copyWith =>
      __$$ChallengerImplCopyWithImpl<_$ChallengerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengerImplToJson(
      this,
    );
  }
}

abstract class _Challenger implements Challenger {
  const factory _Challenger(
      {required final String id,
      required final String name,
      required final List<Challenge> challenges,
      required final bool isWasted}) = _$ChallengerImpl;

  factory _Challenger.fromJson(Map<String, dynamic> json) =
      _$ChallengerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Challenge> get challenges;
  @override
  bool get isWasted;

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengerImplCopyWith<_$ChallengerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
mixin _$Challenge {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get failures => throw _privateConstructorUsedError;
  int get maxFailures => throw _privateConstructorUsedError;

  /// Serializes this Challenge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      bool isCompleted,
      int failures,
      int maxFailures});
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
    Object? id = null,
    Object? name = null,
    Object? isCompleted = null,
    Object? failures = null,
    Object? maxFailures = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as int,
      maxFailures: null == maxFailures
          ? _value.maxFailures
          : maxFailures // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {String id,
      String name,
      bool isCompleted,
      int failures,
      int maxFailures});
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
    Object? id = null,
    Object? name = null,
    Object? isCompleted = null,
    Object? failures = null,
    Object? maxFailures = null,
  }) {
    return _then(_$ChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as int,
      maxFailures: null == maxFailures
          ? _value.maxFailures
          : maxFailures // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl(
      {required this.id,
      required this.name,
      required this.isCompleted,
      required this.failures,
      required this.maxFailures});

  factory _$ChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isCompleted;
  @override
  final int failures;
  @override
  final int maxFailures;

  @override
  String toString() {
    return 'Challenge(id: $id, name: $name, isCompleted: $isCompleted, failures: $failures, maxFailures: $maxFailures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.failures, failures) ||
                other.failures == failures) &&
            (identical(other.maxFailures, maxFailures) ||
                other.maxFailures == maxFailures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, isCompleted, failures, maxFailures);

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      __$$ChallengeImplCopyWithImpl<_$ChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeImplToJson(
      this,
    );
  }
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      {required final String id,
      required final String name,
      required final bool isCompleted,
      required final int failures,
      required final int maxFailures}) = _$ChallengeImpl;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$ChallengeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isCompleted;
  @override
  int get failures;
  @override
  int get maxFailures;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
