// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductState()';
  }
}

/// @nodoc
class $AddProductStateCopyWith<$Res> {
  $AddProductStateCopyWith(
      AddProductState _, $Res Function(AddProductState) __);
}

/// Adds pattern-matching-related methods to [AddProductState].
extension AddProductStatePatterns on AddProductState {
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
    TResult Function(AddProductLoading value)? addProductLoading,
    TResult Function(AddProductSuccess value)? addProductSuccess,
    TResult Function(AddProductError value)? addProductError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case AddProductLoading() when addProductLoading != null:
        return addProductLoading(_that);
      case AddProductSuccess() when addProductSuccess != null:
        return addProductSuccess(_that);
      case AddProductError() when addProductError != null:
        return addProductError(_that);
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
    required TResult Function(AddProductLoading value) addProductLoading,
    required TResult Function(AddProductSuccess value) addProductSuccess,
    required TResult Function(AddProductError value) addProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case AddProductLoading():
        return addProductLoading(_that);
      case AddProductSuccess():
        return addProductSuccess(_that);
      case AddProductError():
        return addProductError(_that);
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
    TResult? Function(AddProductLoading value)? addProductLoading,
    TResult? Function(AddProductSuccess value)? addProductSuccess,
    TResult? Function(AddProductError value)? addProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case AddProductLoading() when addProductLoading != null:
        return addProductLoading(_that);
      case AddProductSuccess() when addProductSuccess != null:
        return addProductSuccess(_that);
      case AddProductError() when addProductError != null:
        return addProductError(_that);
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
    TResult Function()? addProductLoading,
    TResult Function()? addProductSuccess,
    TResult Function(String error)? addProductError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case AddProductLoading() when addProductLoading != null:
        return addProductLoading();
      case AddProductSuccess() when addProductSuccess != null:
        return addProductSuccess();
      case AddProductError() when addProductError != null:
        return addProductError(_that.error);
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
    required TResult Function() addProductLoading,
    required TResult Function() addProductSuccess,
    required TResult Function(String error) addProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case AddProductLoading():
        return addProductLoading();
      case AddProductSuccess():
        return addProductSuccess();
      case AddProductError():
        return addProductError(_that.error);
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
    TResult? Function()? addProductLoading,
    TResult? Function()? addProductSuccess,
    TResult? Function(String error)? addProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case AddProductLoading() when addProductLoading != null:
        return addProductLoading();
      case AddProductSuccess() when addProductSuccess != null:
        return addProductSuccess();
      case AddProductError() when addProductError != null:
        return addProductError(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AddProductState {
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
    return 'AddProductState.initial()';
  }
}

/// @nodoc

class AddProductLoading implements AddProductState {
  const AddProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductState.addProductLoading()';
  }
}

/// @nodoc

class AddProductSuccess implements AddProductState {
  const AddProductSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AddProductState.addProductSuccess()';
  }
}

/// @nodoc

class AddProductError implements AddProductState {
  const AddProductError({required this.error});

  final String error;

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddProductErrorCopyWith<AddProductError> get copyWith =>
      _$AddProductErrorCopyWithImpl<AddProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AddProductState.addProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AddProductErrorCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory $AddProductErrorCopyWith(
          AddProductError value, $Res Function(AddProductError) _then) =
      _$AddProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddProductErrorCopyWithImpl<$Res>
    implements $AddProductErrorCopyWith<$Res> {
  _$AddProductErrorCopyWithImpl(this._self, this._then);

  final AddProductError _self;
  final $Res Function(AddProductError) _then;

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AddProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
