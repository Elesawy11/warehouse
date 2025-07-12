// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllProductState()';
  }
}

/// @nodoc
class $GetAllProductStateCopyWith<$Res> {
  $GetAllProductStateCopyWith(
      GetAllProductState _, $Res Function(GetAllProductState) __);
}

/// Adds pattern-matching-related methods to [GetAllProductState].
extension GetAllProductStatePatterns on GetAllProductState {
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
    TResult Function(GetProductLoading value)? getProductLoading,
    TResult Function(GetProductSuccess value)? getProductSuccess,
    TResult Function(GetProductError value)? getProductError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetProductLoading() when getProductLoading != null:
        return getProductLoading(_that);
      case GetProductSuccess() when getProductSuccess != null:
        return getProductSuccess(_that);
      case GetProductError() when getProductError != null:
        return getProductError(_that);
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
    required TResult Function(GetProductLoading value) getProductLoading,
    required TResult Function(GetProductSuccess value) getProductSuccess,
    required TResult Function(GetProductError value) getProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case GetProductLoading():
        return getProductLoading(_that);
      case GetProductSuccess():
        return getProductSuccess(_that);
      case GetProductError():
        return getProductError(_that);
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
    TResult? Function(GetProductLoading value)? getProductLoading,
    TResult? Function(GetProductSuccess value)? getProductSuccess,
    TResult? Function(GetProductError value)? getProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetProductLoading() when getProductLoading != null:
        return getProductLoading(_that);
      case GetProductSuccess() when getProductSuccess != null:
        return getProductSuccess(_that);
      case GetProductError() when getProductError != null:
        return getProductError(_that);
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
    TResult Function()? getProductLoading,
    TResult Function(List<ProductModel> productList)? getProductSuccess,
    TResult Function(String error)? getProductError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetProductLoading() when getProductLoading != null:
        return getProductLoading();
      case GetProductSuccess() when getProductSuccess != null:
        return getProductSuccess(_that.productList);
      case GetProductError() when getProductError != null:
        return getProductError(_that.error);
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
    required TResult Function() getProductLoading,
    required TResult Function(List<ProductModel> productList) getProductSuccess,
    required TResult Function(String error) getProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case GetProductLoading():
        return getProductLoading();
      case GetProductSuccess():
        return getProductSuccess(_that.productList);
      case GetProductError():
        return getProductError(_that.error);
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
    TResult? Function()? getProductLoading,
    TResult? Function(List<ProductModel> productList)? getProductSuccess,
    TResult? Function(String error)? getProductError,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetProductLoading() when getProductLoading != null:
        return getProductLoading();
      case GetProductSuccess() when getProductSuccess != null:
        return getProductSuccess(_that.productList);
      case GetProductError() when getProductError != null:
        return getProductError(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements GetAllProductState {
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
    return 'GetAllProductState.initial()';
  }
}

/// @nodoc

class GetProductLoading implements GetAllProductState {
  const GetProductLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllProductState.getProductLoading()';
  }
}

/// @nodoc

class GetProductSuccess implements GetAllProductState {
  const GetProductSuccess({required final List<ProductModel> productList})
      : _productList = productList;

  final List<ProductModel> _productList;
  List<ProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  /// Create a copy of GetAllProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductSuccessCopyWith<GetProductSuccess> get copyWith =>
      _$GetProductSuccessCopyWithImpl<GetProductSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductSuccess &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @override
  String toString() {
    return 'GetAllProductState.getProductSuccess(productList: $productList)';
  }
}

/// @nodoc
abstract mixin class $GetProductSuccessCopyWith<$Res>
    implements $GetAllProductStateCopyWith<$Res> {
  factory $GetProductSuccessCopyWith(
          GetProductSuccess value, $Res Function(GetProductSuccess) _then) =
      _$GetProductSuccessCopyWithImpl;
  @useResult
  $Res call({List<ProductModel> productList});
}

/// @nodoc
class _$GetProductSuccessCopyWithImpl<$Res>
    implements $GetProductSuccessCopyWith<$Res> {
  _$GetProductSuccessCopyWithImpl(this._self, this._then);

  final GetProductSuccess _self;
  final $Res Function(GetProductSuccess) _then;

  /// Create a copy of GetAllProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productList = null,
  }) {
    return _then(GetProductSuccess(
      productList: null == productList
          ? _self._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class GetProductError implements GetAllProductState {
  const GetProductError({required this.error});

  final String error;

  /// Create a copy of GetAllProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProductErrorCopyWith<GetProductError> get copyWith =>
      _$GetProductErrorCopyWithImpl<GetProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetAllProductState.getProductError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetProductErrorCopyWith<$Res>
    implements $GetAllProductStateCopyWith<$Res> {
  factory $GetProductErrorCopyWith(
          GetProductError value, $Res Function(GetProductError) _then) =
      _$GetProductErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetProductErrorCopyWithImpl<$Res>
    implements $GetProductErrorCopyWith<$Res> {
  _$GetProductErrorCopyWithImpl(this._self, this._then);

  final GetProductError _self;
  final $Res Function(GetProductError) _then;

  /// Create a copy of GetAllProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetProductError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
