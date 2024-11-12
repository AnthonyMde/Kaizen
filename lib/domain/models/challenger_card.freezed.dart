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
mixin _$Challenger {
  String get name => throw _privateConstructorUsedError;
  List<Challenge> get challenges => throw _privateConstructorUsedError;
  int get failures => throw _privateConstructorUsedError;

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
  $Res call({String name, List<Challenge> challenges, int failures});
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
    Object? name = null,
    Object? challenges = null,
    Object? failures = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String name, List<Challenge> challenges, int failures});
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
    Object? name = null,
    Object? challenges = null,
    Object? failures = null,
  }) {
    return _then(_$ChallengerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      challenges: null == challenges
          ? _value._challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChallengerImpl implements _Challenger {
  const _$ChallengerImpl(
      {required this.name,
      required final List<Challenge> challenges,
      required this.failures})
      : _challenges = challenges;

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
  final int failures;

  @override
  String toString() {
    return 'Challenger(name: $name, challenges: $challenges, failures: $failures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengerImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._challenges, _challenges) &&
            (identical(other.failures, failures) ||
                other.failures == failures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_challenges), failures);

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengerImplCopyWith<_$ChallengerImpl> get copyWith =>
      __$$ChallengerImplCopyWithImpl<_$ChallengerImpl>(this, _$identity);
}

abstract class _Challenger implements Challenger {
  const factory _Challenger(
      {required final String name,
      required final List<Challenge> challenges,
      required final int failures}) = _$ChallengerImpl;

  @override
  String get name;
  @override
  List<Challenge> get challenges;
  @override
  int get failures;

  /// Create a copy of Challenger
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengerImplCopyWith<_$ChallengerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Challenge {
  String get name => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

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
  $Res call({String name, bool completed});
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
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, bool completed});
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
    Object? completed = null,
  }) {
    return _then(_$ChallengeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl({required this.name, required this.completed});

  @override
  final String name;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Challenge(name: $name, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, completed);

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
      required final bool completed}) = _$ChallengeImpl;

  @override
  String get name;
  @override
  bool get completed;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
