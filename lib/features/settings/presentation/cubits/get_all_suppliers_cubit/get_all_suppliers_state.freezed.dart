// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_suppliers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllSuppliersState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllSuppliersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllSuppliersState()';
  }
}

/// @nodoc
class $GetAllSuppliersStateCopyWith<$Res> {
  $GetAllSuppliersStateCopyWith(
      GetAllSuppliersState _, $Res Function(GetAllSuppliersState) __);
}

/// Adds pattern-matching-related methods to [GetAllSuppliersState].
extension GetAllSuppliersStatePatterns on GetAllSuppliersState {
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
    TResult Function(GetAllSuppliersLoading value)? getAllSuppliersLoading,
    TResult Function(GetAllSuppliersError value)? getAllSuppliersError,
    TResult Function(GetAllSuppliersSuucess value)? getAllSuppliersSuucess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetAllSuppliersLoading() when getAllSuppliersLoading != null:
        return getAllSuppliersLoading(_that);
      case GetAllSuppliersError() when getAllSuppliersError != null:
        return getAllSuppliersError(_that);
      case GetAllSuppliersSuucess() when getAllSuppliersSuucess != null:
        return getAllSuppliersSuucess(_that);
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
    required TResult Function(GetAllSuppliersLoading value)
        getAllSuppliersLoading,
    required TResult Function(GetAllSuppliersError value) getAllSuppliersError,
    required TResult Function(GetAllSuppliersSuucess value)
        getAllSuppliersSuucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case GetAllSuppliersLoading():
        return getAllSuppliersLoading(_that);
      case GetAllSuppliersError():
        return getAllSuppliersError(_that);
      case GetAllSuppliersSuucess():
        return getAllSuppliersSuucess(_that);
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
    TResult? Function(GetAllSuppliersLoading value)? getAllSuppliersLoading,
    TResult? Function(GetAllSuppliersError value)? getAllSuppliersError,
    TResult? Function(GetAllSuppliersSuucess value)? getAllSuppliersSuucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetAllSuppliersLoading() when getAllSuppliersLoading != null:
        return getAllSuppliersLoading(_that);
      case GetAllSuppliersError() when getAllSuppliersError != null:
        return getAllSuppliersError(_that);
      case GetAllSuppliersSuucess() when getAllSuppliersSuucess != null:
        return getAllSuppliersSuucess(_that);
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
    TResult Function()? getAllSuppliersLoading,
    TResult Function(String error)? getAllSuppliersError,
    TResult Function(List<PersonModel> suppliers)? getAllSuppliersSuucess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetAllSuppliersLoading() when getAllSuppliersLoading != null:
        return getAllSuppliersLoading();
      case GetAllSuppliersError() when getAllSuppliersError != null:
        return getAllSuppliersError(_that.error);
      case GetAllSuppliersSuucess() when getAllSuppliersSuucess != null:
        return getAllSuppliersSuucess(_that.suppliers);
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
    required TResult Function() getAllSuppliersLoading,
    required TResult Function(String error) getAllSuppliersError,
    required TResult Function(List<PersonModel> suppliers)
        getAllSuppliersSuucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case GetAllSuppliersLoading():
        return getAllSuppliersLoading();
      case GetAllSuppliersError():
        return getAllSuppliersError(_that.error);
      case GetAllSuppliersSuucess():
        return getAllSuppliersSuucess(_that.suppliers);
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
    TResult? Function()? getAllSuppliersLoading,
    TResult? Function(String error)? getAllSuppliersError,
    TResult? Function(List<PersonModel> suppliers)? getAllSuppliersSuucess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetAllSuppliersLoading() when getAllSuppliersLoading != null:
        return getAllSuppliersLoading();
      case GetAllSuppliersError() when getAllSuppliersError != null:
        return getAllSuppliersError(_that.error);
      case GetAllSuppliersSuucess() when getAllSuppliersSuucess != null:
        return getAllSuppliersSuucess(_that.suppliers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements GetAllSuppliersState {
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
    return 'GetAllSuppliersState.initial()';
  }
}

/// @nodoc

class GetAllSuppliersLoading implements GetAllSuppliersState {
  const GetAllSuppliersLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllSuppliersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllSuppliersState.getAllSuppliersLoading()';
  }
}

/// @nodoc

class GetAllSuppliersError implements GetAllSuppliersState {
  const GetAllSuppliersError({required this.error});

  final String error;

  /// Create a copy of GetAllSuppliersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllSuppliersErrorCopyWith<GetAllSuppliersError> get copyWith =>
      _$GetAllSuppliersErrorCopyWithImpl<GetAllSuppliersError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllSuppliersError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetAllSuppliersState.getAllSuppliersError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetAllSuppliersErrorCopyWith<$Res>
    implements $GetAllSuppliersStateCopyWith<$Res> {
  factory $GetAllSuppliersErrorCopyWith(GetAllSuppliersError value,
          $Res Function(GetAllSuppliersError) _then) =
      _$GetAllSuppliersErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetAllSuppliersErrorCopyWithImpl<$Res>
    implements $GetAllSuppliersErrorCopyWith<$Res> {
  _$GetAllSuppliersErrorCopyWithImpl(this._self, this._then);

  final GetAllSuppliersError _self;
  final $Res Function(GetAllSuppliersError) _then;

  /// Create a copy of GetAllSuppliersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetAllSuppliersError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetAllSuppliersSuucess implements GetAllSuppliersState {
  const GetAllSuppliersSuucess({required final List<PersonModel> suppliers})
      : _suppliers = suppliers;

  final List<PersonModel> _suppliers;
  List<PersonModel> get suppliers {
    if (_suppliers is EqualUnmodifiableListView) return _suppliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliers);
  }

  /// Create a copy of GetAllSuppliersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllSuppliersSuucessCopyWith<GetAllSuppliersSuucess> get copyWith =>
      _$GetAllSuppliersSuucessCopyWithImpl<GetAllSuppliersSuucess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllSuppliersSuucess &&
            const DeepCollectionEquality()
                .equals(other._suppliers, _suppliers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_suppliers));

  @override
  String toString() {
    return 'GetAllSuppliersState.getAllSuppliersSuucess(suppliers: $suppliers)';
  }
}

/// @nodoc
abstract mixin class $GetAllSuppliersSuucessCopyWith<$Res>
    implements $GetAllSuppliersStateCopyWith<$Res> {
  factory $GetAllSuppliersSuucessCopyWith(GetAllSuppliersSuucess value,
          $Res Function(GetAllSuppliersSuucess) _then) =
      _$GetAllSuppliersSuucessCopyWithImpl;
  @useResult
  $Res call({List<PersonModel> suppliers});
}

/// @nodoc
class _$GetAllSuppliersSuucessCopyWithImpl<$Res>
    implements $GetAllSuppliersSuucessCopyWith<$Res> {
  _$GetAllSuppliersSuucessCopyWithImpl(this._self, this._then);

  final GetAllSuppliersSuucess _self;
  final $Res Function(GetAllSuppliersSuucess) _then;

  /// Create a copy of GetAllSuppliersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suppliers = null,
  }) {
    return _then(GetAllSuppliersSuucess(
      suppliers: null == suppliers
          ? _self._suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
    ));
  }
}

// dart format on
