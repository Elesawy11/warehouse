// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_with_phone_number_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SigninWithPhoneNumberState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SigninWithPhoneNumberState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SigninWithPhoneNumberState()';
  }
}

/// @nodoc
class $SigninWithPhoneNumberStateCopyWith<$Res> {
  $SigninWithPhoneNumberStateCopyWith(SigninWithPhoneNumberState _,
      $Res Function(SigninWithPhoneNumberState) __);
}

/// @nodoc

class _Initial implements SigninWithPhoneNumberState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SigninWithPhoneNumberState.initial()';
  }
}

/// @nodoc

class SingInWithPhoneLoading implements SigninWithPhoneNumberState {
  const SingInWithPhoneLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SingInWithPhoneLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SigninWithPhoneNumberState.singInWithPhoneLoading()';
  }
}

/// @nodoc

class SingInWithPhoneSuccess implements SigninWithPhoneNumberState {
  const SingInWithPhoneSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SingInWithPhoneSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SigninWithPhoneNumberState.singInWithPhoneSuccess()';
  }
}

/// @nodoc

class SingInWithPhoneError implements SigninWithPhoneNumberState {
  const SingInWithPhoneError({required this.error});

  final String error;

  /// Create a copy of SigninWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SingInWithPhoneErrorCopyWith<SingInWithPhoneError> get copyWith =>
      _$SingInWithPhoneErrorCopyWithImpl<SingInWithPhoneError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SingInWithPhoneError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SigninWithPhoneNumberState.singInWithPhoneError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SingInWithPhoneErrorCopyWith<$Res>
    implements $SigninWithPhoneNumberStateCopyWith<$Res> {
  factory $SingInWithPhoneErrorCopyWith(SingInWithPhoneError value,
          $Res Function(SingInWithPhoneError) _then) =
      _$SingInWithPhoneErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SingInWithPhoneErrorCopyWithImpl<$Res>
    implements $SingInWithPhoneErrorCopyWith<$Res> {
  _$SingInWithPhoneErrorCopyWithImpl(this._self, this._then);

  final SingInWithPhoneError _self;
  final $Res Function(SingInWithPhoneError) _then;

  /// Create a copy of SigninWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SingInWithPhoneError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
