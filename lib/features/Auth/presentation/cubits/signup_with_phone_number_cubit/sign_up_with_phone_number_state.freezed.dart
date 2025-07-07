// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [SignUpWithPhoneNumberState].
extension SignUpWithPhoneNumberStatePatterns on SignUpWithPhoneNumberState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SignUpWithPhoneSuccess value)? signUpWithPhoneSuccess,
    TResult Function(SignUpWithPhoneLoading value)? signUpWithPhoneLoading,
    TResult Function(SignUpWithPhoneError value)? signUpWithPhoneError,
    TResult Function(VerifyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(VerifyCodeLoading value)? verifyCodeLoading,
    TResult Function(VerifyCodeError value)? verifyCodeError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case SignUpWithPhoneSuccess() when signUpWithPhoneSuccess != null:
        return signUpWithPhoneSuccess(_that);
      case SignUpWithPhoneLoading() when signUpWithPhoneLoading != null:
        return signUpWithPhoneLoading(_that);
      case SignUpWithPhoneError() when signUpWithPhoneError != null:
        return signUpWithPhoneError(_that);
      case VerifyCodeSuccess() when verifyCodeSuccess != null:
        return verifyCodeSuccess(_that);
      case VerifyCodeLoading() when verifyCodeLoading != null:
        return verifyCodeLoading(_that);
      case VerifyCodeError() when verifyCodeError != null:
        return verifyCodeError(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SignUpWithPhoneSuccess value)
        signUpWithPhoneSuccess,
    required TResult Function(SignUpWithPhoneLoading value)
        signUpWithPhoneLoading,
    required TResult Function(SignUpWithPhoneError value) signUpWithPhoneError,
    required TResult Function(VerifyCodeSuccess value) verifyCodeSuccess,
    required TResult Function(VerifyCodeLoading value) verifyCodeLoading,
    required TResult Function(VerifyCodeError value) verifyCodeError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case SignUpWithPhoneSuccess():
        return signUpWithPhoneSuccess(_that);
      case SignUpWithPhoneLoading():
        return signUpWithPhoneLoading(_that);
      case SignUpWithPhoneError():
        return signUpWithPhoneError(_that);
      case VerifyCodeSuccess():
        return verifyCodeSuccess(_that);
      case VerifyCodeLoading():
        return verifyCodeLoading(_that);
      case VerifyCodeError():
        return verifyCodeError(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SignUpWithPhoneSuccess value)? signUpWithPhoneSuccess,
    TResult? Function(SignUpWithPhoneLoading value)? signUpWithPhoneLoading,
    TResult? Function(SignUpWithPhoneError value)? signUpWithPhoneError,
    TResult? Function(VerifyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(VerifyCodeLoading value)? verifyCodeLoading,
    TResult? Function(VerifyCodeError value)? verifyCodeError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case SignUpWithPhoneSuccess() when signUpWithPhoneSuccess != null:
        return signUpWithPhoneSuccess(_that);
      case SignUpWithPhoneLoading() when signUpWithPhoneLoading != null:
        return signUpWithPhoneLoading(_that);
      case SignUpWithPhoneError() when signUpWithPhoneError != null:
        return signUpWithPhoneError(_that);
      case VerifyCodeSuccess() when verifyCodeSuccess != null:
        return verifyCodeSuccess(_that);
      case VerifyCodeLoading() when verifyCodeLoading != null:
        return verifyCodeLoading(_that);
      case VerifyCodeError() when verifyCodeError != null:
        return verifyCodeError(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpWithPhoneSuccess,
    TResult Function()? signUpWithPhoneLoading,
    TResult Function(String error)? signUpWithPhoneError,
    TResult Function()? verifyCodeSuccess,
    TResult Function()? verifyCodeLoading,
    TResult Function(String error)? verifyCodeError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case SignUpWithPhoneSuccess() when signUpWithPhoneSuccess != null:
        return signUpWithPhoneSuccess();
      case SignUpWithPhoneLoading() when signUpWithPhoneLoading != null:
        return signUpWithPhoneLoading();
      case SignUpWithPhoneError() when signUpWithPhoneError != null:
        return signUpWithPhoneError(_that.error);
      case VerifyCodeSuccess() when verifyCodeSuccess != null:
        return verifyCodeSuccess();
      case VerifyCodeLoading() when verifyCodeLoading != null:
        return verifyCodeLoading();
      case VerifyCodeError() when verifyCodeError != null:
        return verifyCodeError(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpWithPhoneSuccess,
    required TResult Function() signUpWithPhoneLoading,
    required TResult Function(String error) signUpWithPhoneError,
    required TResult Function() verifyCodeSuccess,
    required TResult Function() verifyCodeLoading,
    required TResult Function(String error) verifyCodeError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case SignUpWithPhoneSuccess():
        return signUpWithPhoneSuccess();
      case SignUpWithPhoneLoading():
        return signUpWithPhoneLoading();
      case SignUpWithPhoneError():
        return signUpWithPhoneError(_that.error);
      case VerifyCodeSuccess():
        return verifyCodeSuccess();
      case VerifyCodeLoading():
        return verifyCodeLoading();
      case VerifyCodeError():
        return verifyCodeError(_that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUpWithPhoneSuccess,
    TResult? Function()? signUpWithPhoneLoading,
    TResult? Function(String error)? signUpWithPhoneError,
    TResult? Function()? verifyCodeSuccess,
    TResult? Function()? verifyCodeLoading,
    TResult? Function(String error)? verifyCodeError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case SignUpWithPhoneSuccess() when signUpWithPhoneSuccess != null:
        return signUpWithPhoneSuccess();
      case SignUpWithPhoneLoading() when signUpWithPhoneLoading != null:
        return signUpWithPhoneLoading();
      case SignUpWithPhoneError() when signUpWithPhoneError != null:
        return signUpWithPhoneError(_that.error);
      case VerifyCodeSuccess() when verifyCodeSuccess != null:
        return verifyCodeSuccess();
      case VerifyCodeLoading() when verifyCodeLoading != null:
        return verifyCodeLoading();
      case VerifyCodeError() when verifyCodeError != null:
        return verifyCodeError(_that.error);
      case _:
        return null;
    }
  }
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

/// @nodoc

class VerifyCodeSuccess implements SignUpWithPhoneNumberState {
  const VerifyCodeSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyCodeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.verifyCodeSuccess()';
  }
}

/// @nodoc

class VerifyCodeLoading implements SignUpWithPhoneNumberState {
  const VerifyCodeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerifyCodeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.verifyCodeLoading()';
  }
}

/// @nodoc

class VerifyCodeError implements SignUpWithPhoneNumberState {
  const VerifyCodeError({required this.error});

  final String error;

  /// Create a copy of SignUpWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyCodeErrorCopyWith<VerifyCodeError> get copyWith =>
      _$VerifyCodeErrorCopyWithImpl<VerifyCodeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyCodeError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SignUpWithPhoneNumberState.verifyCodeError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $VerifyCodeErrorCopyWith<$Res>
    implements $SignUpWithPhoneNumberStateCopyWith<$Res> {
  factory $VerifyCodeErrorCopyWith(
          VerifyCodeError value, $Res Function(VerifyCodeError) _then) =
      _$VerifyCodeErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$VerifyCodeErrorCopyWithImpl<$Res>
    implements $VerifyCodeErrorCopyWith<$Res> {
  _$VerifyCodeErrorCopyWithImpl(this._self, this._then);

  final VerifyCodeError _self;
  final $Res Function(VerifyCodeError) _then;

  /// Create a copy of SignUpWithPhoneNumberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(VerifyCodeError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
