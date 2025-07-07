// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Adds pattern-matching-related methods to [SigninWithPhoneNumberState].
extension SigninWithPhoneNumberStatePatterns on SigninWithPhoneNumberState {
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
    TResult Function(SingInWithPhoneLoading value)? singInWithPhoneLoading,
    TResult Function(SingInWithPhoneSuccess value)? singInWithPhoneSuccess,
    TResult Function(SingInWithPhoneError value)? singInWithPhoneError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case SingInWithPhoneLoading() when singInWithPhoneLoading != null:
        return singInWithPhoneLoading(_that);
      case SingInWithPhoneSuccess() when singInWithPhoneSuccess != null:
        return singInWithPhoneSuccess(_that);
      case SingInWithPhoneError() when singInWithPhoneError != null:
        return singInWithPhoneError(_that);
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
    required TResult Function(SingInWithPhoneLoading value)
        singInWithPhoneLoading,
    required TResult Function(SingInWithPhoneSuccess value)
        singInWithPhoneSuccess,
    required TResult Function(SingInWithPhoneError value) singInWithPhoneError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case SingInWithPhoneLoading():
        return singInWithPhoneLoading(_that);
      case SingInWithPhoneSuccess():
        return singInWithPhoneSuccess(_that);
      case SingInWithPhoneError():
        return singInWithPhoneError(_that);
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
    TResult? Function(SingInWithPhoneLoading value)? singInWithPhoneLoading,
    TResult? Function(SingInWithPhoneSuccess value)? singInWithPhoneSuccess,
    TResult? Function(SingInWithPhoneError value)? singInWithPhoneError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case SingInWithPhoneLoading() when singInWithPhoneLoading != null:
        return singInWithPhoneLoading(_that);
      case SingInWithPhoneSuccess() when singInWithPhoneSuccess != null:
        return singInWithPhoneSuccess(_that);
      case SingInWithPhoneError() when singInWithPhoneError != null:
        return singInWithPhoneError(_that);
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
    TResult Function()? singInWithPhoneLoading,
    TResult Function()? singInWithPhoneSuccess,
    TResult Function(String error)? singInWithPhoneError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case SingInWithPhoneLoading() when singInWithPhoneLoading != null:
        return singInWithPhoneLoading();
      case SingInWithPhoneSuccess() when singInWithPhoneSuccess != null:
        return singInWithPhoneSuccess();
      case SingInWithPhoneError() when singInWithPhoneError != null:
        return singInWithPhoneError(_that.error);
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
    required TResult Function() singInWithPhoneLoading,
    required TResult Function() singInWithPhoneSuccess,
    required TResult Function(String error) singInWithPhoneError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case SingInWithPhoneLoading():
        return singInWithPhoneLoading();
      case SingInWithPhoneSuccess():
        return singInWithPhoneSuccess();
      case SingInWithPhoneError():
        return singInWithPhoneError(_that.error);
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
    TResult? Function()? singInWithPhoneLoading,
    TResult? Function()? singInWithPhoneSuccess,
    TResult? Function(String error)? singInWithPhoneError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case SingInWithPhoneLoading() when singInWithPhoneLoading != null:
        return singInWithPhoneLoading();
      case SingInWithPhoneSuccess() when singInWithPhoneSuccess != null:
        return singInWithPhoneSuccess();
      case SingInWithPhoneError() when singInWithPhoneError != null:
        return singInWithPhoneError(_that.error);
      case _:
        return null;
    }
  }
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
