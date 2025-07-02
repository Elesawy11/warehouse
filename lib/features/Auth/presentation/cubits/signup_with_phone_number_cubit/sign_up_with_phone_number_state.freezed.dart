// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_with_phone_number_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpWithPhoneNumberState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpWithPhoneNumberState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState()';
  }
}

/// @nodoc
class $SignUpWithPhoneNumberStateCopyWith<$Res> {
  $SignUpWithPhoneNumberStateCopyWith(SignUpWithPhoneNumberState _,
      $Res Function(SignUpWithPhoneNumberState) __);
}

/// @nodoc

class _Initial implements SignUpWithPhoneNumberState {
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
    return 'SignUpWithPhoneNumberState.initial()';
  }
}

/// @nodoc

class SignUpWithPhoneSuccess implements SignUpWithPhoneNumberState {
  const SignUpWithPhoneSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpWithPhoneSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.signUpWithPhoneSuccess()';
  }
}

/// @nodoc

class SignUpWithPhoneLoading implements SignUpWithPhoneNumberState {
  const SignUpWithPhoneLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpWithPhoneLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.signUpWithPhoneLoading()';
  }
}

/// @nodoc

class SignUpWithPhoneError implements SignUpWithPhoneNumberState {
  const SignUpWithPhoneError({required this.error});

  final String error;

  /// Create a copy of SignUpWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpWithPhoneErrorCopyWith<SignUpWithPhoneError> get copyWith =>
      _$SignUpWithPhoneErrorCopyWithImpl<SignUpWithPhoneError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpWithPhoneError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.signUpWithPhoneError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SignUpWithPhoneErrorCopyWith<$Res>
    implements $SignUpWithPhoneNumberStateCopyWith<$Res> {
  factory $SignUpWithPhoneErrorCopyWith(SignUpWithPhoneError value,
          $Res Function(SignUpWithPhoneError) _then) =
      _$SignUpWithPhoneErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SignUpWithPhoneErrorCopyWithImpl<$Res>
    implements $SignUpWithPhoneErrorCopyWith<$Res> {
  _$SignUpWithPhoneErrorCopyWithImpl(this._self, this._then);

  final SignUpWithPhoneError _self;
  final $Res Function(SignUpWithPhoneError) _then;

  /// Create a copy of SignUpWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SignUpWithPhoneError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
