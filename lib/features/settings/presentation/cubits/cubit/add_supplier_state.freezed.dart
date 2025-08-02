// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_supplier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddSupplierState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddSupplierState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddSupplierState()';
  }
}

/// @nodoc
class $AddSupplierStateCopyWith<$Res> {
  $AddSupplierStateCopyWith(
      AddSupplierState _, $Res Function(AddSupplierState) __);
}

/// Adds pattern-matching-related methods to [AddSupplierState].
extension AddSupplierStatePatterns on AddSupplierState {
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
    TResult Function(AddSupplierloading value)? addSupplierloading,
    TResult Function(AddSupplierError value)? addSupplierError,
    TResult Function(AddSupplierSuccess value)? addSupplierSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case AddSupplierloading() when addSupplierloading != null:
        return addSupplierloading(_that);
      case AddSupplierError() when addSupplierError != null:
        return addSupplierError(_that);
      case AddSupplierSuccess() when addSupplierSuccess != null:
        return addSupplierSuccess(_that);
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
    required TResult Function(AddSupplierloading value) addSupplierloading,
    required TResult Function(AddSupplierError value) addSupplierError,
    required TResult Function(AddSupplierSuccess value) addSupplierSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case AddSupplierloading():
        return addSupplierloading(_that);
      case AddSupplierError():
        return addSupplierError(_that);
      case AddSupplierSuccess():
        return addSupplierSuccess(_that);
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
    TResult? Function(AddSupplierloading value)? addSupplierloading,
    TResult? Function(AddSupplierError value)? addSupplierError,
    TResult? Function(AddSupplierSuccess value)? addSupplierSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case AddSupplierloading() when addSupplierloading != null:
        return addSupplierloading(_that);
      case AddSupplierError() when addSupplierError != null:
        return addSupplierError(_that);
      case AddSupplierSuccess() when addSupplierSuccess != null:
        return addSupplierSuccess(_that);
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
    TResult Function()? addSupplierloading,
    TResult Function(String error)? addSupplierError,
    TResult Function()? addSupplierSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case AddSupplierloading() when addSupplierloading != null:
        return addSupplierloading();
      case AddSupplierError() when addSupplierError != null:
        return addSupplierError(_that.error);
      case AddSupplierSuccess() when addSupplierSuccess != null:
        return addSupplierSuccess();
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
    required TResult Function() addSupplierloading,
    required TResult Function(String error) addSupplierError,
    required TResult Function() addSupplierSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case AddSupplierloading():
        return addSupplierloading();
      case AddSupplierError():
        return addSupplierError(_that.error);
      case AddSupplierSuccess():
        return addSupplierSuccess();
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
    TResult? Function()? addSupplierloading,
    TResult? Function(String error)? addSupplierError,
    TResult? Function()? addSupplierSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case AddSupplierloading() when addSupplierloading != null:
        return addSupplierloading();
      case AddSupplierError() when addSupplierError != null:
        return addSupplierError(_that.error);
      case AddSupplierSuccess() when addSupplierSuccess != null:
        return addSupplierSuccess();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AddSupplierState {
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
    return 'AddSupplierState.initial()';
  }
}

/// @nodoc

class AddSupplierloading implements AddSupplierState {
  const AddSupplierloading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddSupplierloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddSupplierState.addSupplierloading()';
  }
}

/// @nodoc

class AddSupplierError implements AddSupplierState {
  const AddSupplierError({required this.error});

  final String error;

  /// Create a copy of AddSupplierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddSupplierErrorCopyWith<AddSupplierError> get copyWith =>
      _$AddSupplierErrorCopyWithImpl<AddSupplierError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSupplierError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AddSupplierState.addSupplierError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AddSupplierErrorCopyWith<$Res>
    implements $AddSupplierStateCopyWith<$Res> {
  factory $AddSupplierErrorCopyWith(
          AddSupplierError value, $Res Function(AddSupplierError) _then) =
      _$AddSupplierErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddSupplierErrorCopyWithImpl<$Res>
    implements $AddSupplierErrorCopyWith<$Res> {
  _$AddSupplierErrorCopyWithImpl(this._self, this._then);

  final AddSupplierError _self;
  final $Res Function(AddSupplierError) _then;

  /// Create a copy of AddSupplierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AddSupplierError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AddSupplierSuccess implements AddSupplierState {
  const AddSupplierSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddSupplierSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddSupplierState.addSupplierSuccess()';
  }
}

// dart format on
