// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginScreenState {
  String get currentName => throw _privateConstructorUsedError;
  bool get isButtonLoading => throw _privateConstructorUsedError;
  bool get isLoginNameEnabled => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call(
      {String currentName,
      bool isButtonLoading,
      bool isLoginNameEnabled,
      String name,
      String? errorText});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentName = null,
    Object? isButtonLoading = null,
    Object? isLoginNameEnabled = null,
    Object? name = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      currentName: null == currentName
          ? _value.currentName
          : currentName // ignore: cast_nullable_to_non_nullable
              as String,
      isButtonLoading: null == isButtonLoading
          ? _value.isButtonLoading
          : isButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginNameEnabled: null == isLoginNameEnabled
          ? _value.isLoginNameEnabled
          : isLoginNameEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginScreenStateImplCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$LoginScreenStateImplCopyWith(_$LoginScreenStateImpl value,
          $Res Function(_$LoginScreenStateImpl) then) =
      __$$LoginScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentName,
      bool isButtonLoading,
      bool isLoginNameEnabled,
      String name,
      String? errorText});
}

/// @nodoc
class __$$LoginScreenStateImplCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenStateImpl>
    implements _$$LoginScreenStateImplCopyWith<$Res> {
  __$$LoginScreenStateImplCopyWithImpl(_$LoginScreenStateImpl _value,
      $Res Function(_$LoginScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentName = null,
    Object? isButtonLoading = null,
    Object? isLoginNameEnabled = null,
    Object? name = null,
    Object? errorText = freezed,
  }) {
    return _then(_$LoginScreenStateImpl(
      currentName: null == currentName
          ? _value.currentName
          : currentName // ignore: cast_nullable_to_non_nullable
              as String,
      isButtonLoading: null == isButtonLoading
          ? _value.isButtonLoading
          : isButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginNameEnabled: null == isLoginNameEnabled
          ? _value.isLoginNameEnabled
          : isLoginNameEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginScreenStateImpl implements _LoginScreenState {
  _$LoginScreenStateImpl(
      {this.currentName = "",
      this.isButtonLoading = false,
      this.isLoginNameEnabled = true,
      this.name = "",
      this.errorText});

  @override
  @JsonKey()
  final String currentName;
  @override
  @JsonKey()
  final bool isButtonLoading;
  @override
  @JsonKey()
  final bool isLoginNameEnabled;
  @override
  @JsonKey()
  final String name;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'LoginScreenState(currentName: $currentName, isButtonLoading: $isButtonLoading, isLoginNameEnabled: $isLoginNameEnabled, name: $name, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenStateImpl &&
            (identical(other.currentName, currentName) ||
                other.currentName == currentName) &&
            (identical(other.isButtonLoading, isButtonLoading) ||
                other.isButtonLoading == isButtonLoading) &&
            (identical(other.isLoginNameEnabled, isLoginNameEnabled) ||
                other.isLoginNameEnabled == isLoginNameEnabled) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentName, isButtonLoading,
      isLoginNameEnabled, name, errorText);

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      __$$LoginScreenStateImplCopyWithImpl<_$LoginScreenStateImpl>(
          this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  factory _LoginScreenState(
      {final String currentName,
      final bool isButtonLoading,
      final bool isLoginNameEnabled,
      final String name,
      final String? errorText}) = _$LoginScreenStateImpl;

  @override
  String get currentName;
  @override
  bool get isButtonLoading;
  @override
  bool get isLoginNameEnabled;
  @override
  String get name;
  @override
  String? get errorText;

  /// Create a copy of LoginScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginScreenStateImplCopyWith<_$LoginScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
