// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suppliers_features_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuppliersFeaturesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuppliersFeaturesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SuppliersFeaturesState()';
  }
}

/// @nodoc
class $SuppliersFeaturesStateCopyWith<$Res> {
  $SuppliersFeaturesStateCopyWith(
      SuppliersFeaturesState _, $Res Function(SuppliersFeaturesState) __);
}

/// Adds pattern-matching-related methods to [SuppliersFeaturesState].
extension SuppliersFeaturesStatePatterns on SuppliersFeaturesState {
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
    TResult Function(Loading value)? loading,
    TResult Function(GetSuccess value)? getSuccess,
    TResult Function(AddSuccess value)? addSuccess,
    TResult Function(UpdateSuccess value)? updateSuccess,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case GetSuccess() when getSuccess != null:
        return getSuccess(_that);
      case AddSuccess() when addSuccess != null:
        return addSuccess(_that);
      case UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that);
      case DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess(_that);
      case Error() when error != null:
        return error(_that);
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
    required TResult Function(Loading value) loading,
    required TResult Function(GetSuccess value) getSuccess,
    required TResult Function(AddSuccess value) addSuccess,
    required TResult Function(UpdateSuccess value) updateSuccess,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case GetSuccess():
        return getSuccess(_that);
      case AddSuccess():
        return addSuccess(_that);
      case UpdateSuccess():
        return updateSuccess(_that);
      case DeleteSuccess():
        return deleteSuccess(_that);
      case Error():
        return error(_that);
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
    TResult? Function(Loading value)? loading,
    TResult? Function(GetSuccess value)? getSuccess,
    TResult? Function(AddSuccess value)? addSuccess,
    TResult? Function(UpdateSuccess value)? updateSuccess,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case GetSuccess() when getSuccess != null:
        return getSuccess(_that);
      case AddSuccess() when addSuccess != null:
        return addSuccess(_that);
      case UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that);
      case DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess(_that);
      case Error() when error != null:
        return error(_that);
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
    TResult Function()? loading,
    TResult Function(List<PersonModel> suppliers)? getSuccess,
    TResult Function()? addSuccess,
    TResult Function()? updateSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case GetSuccess() when getSuccess != null:
        return getSuccess(_that.suppliers);
      case AddSuccess() when addSuccess != null:
        return addSuccess();
      case UpdateSuccess() when updateSuccess != null:
        return updateSuccess();
      case DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess();
      case Error() when error != null:
        return error(_that.message);
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
    required TResult Function() loading,
    required TResult Function(List<PersonModel> suppliers) getSuccess,
    required TResult Function() addSuccess,
    required TResult Function() updateSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Loading():
        return loading();
      case GetSuccess():
        return getSuccess(_that.suppliers);
      case AddSuccess():
        return addSuccess();
      case UpdateSuccess():
        return updateSuccess();
      case DeleteSuccess():
        return deleteSuccess();
      case Error():
        return error(_that.message);
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
    TResult? Function()? loading,
    TResult? Function(List<PersonModel> suppliers)? getSuccess,
    TResult? Function()? addSuccess,
    TResult? Function()? updateSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case GetSuccess() when getSuccess != null:
        return getSuccess(_that.suppliers);
      case AddSuccess() when addSuccess != null:
        return addSuccess();
      case UpdateSuccess() when updateSuccess != null:
        return updateSuccess();
      case DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess();
      case Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements SuppliersFeaturesState {
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
    return 'SuppliersFeaturesState.initial()';
  }
}

/// @nodoc

class Loading implements SuppliersFeaturesState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SuppliersFeaturesState.loading()';
  }
}

/// @nodoc

class GetSuccess implements SuppliersFeaturesState {
  const GetSuccess(final List<PersonModel> suppliers) : _suppliers = suppliers;

  final List<PersonModel> _suppliers;
  List<PersonModel> get suppliers {
    if (_suppliers is EqualUnmodifiableListView) return _suppliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliers);
  }

  /// Create a copy of SuppliersFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSuccessCopyWith<GetSuccess> get copyWith =>
      _$GetSuccessCopyWithImpl<GetSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSuccess &&
            const DeepCollectionEquality()
                .equals(other._suppliers, _suppliers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_suppliers));

  @override
  String toString() {
    return 'SuppliersFeaturesState.getSuccess(suppliers: $suppliers)';
  }
}

/// @nodoc
abstract mixin class $GetSuccessCopyWith<$Res>
    implements $SuppliersFeaturesStateCopyWith<$Res> {
  factory $GetSuccessCopyWith(
          GetSuccess value, $Res Function(GetSuccess) _then) =
      _$GetSuccessCopyWithImpl;
  @useResult
  $Res call({List<PersonModel> suppliers});
}

/// @nodoc
class _$GetSuccessCopyWithImpl<$Res> implements $GetSuccessCopyWith<$Res> {
  _$GetSuccessCopyWithImpl(this._self, this._then);

  final GetSuccess _self;
  final $Res Function(GetSuccess) _then;

  /// Create a copy of SuppliersFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suppliers = null,
  }) {
    return _then(GetSuccess(
      null == suppliers
          ? _self._suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
    ));
  }
}

/// @nodoc

class AddSuccess implements SuppliersFeaturesState {
  const AddSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SuppliersFeaturesState.addSuccess()';
  }
}

/// @nodoc

class UpdateSuccess implements SuppliersFeaturesState {
  const UpdateSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SuppliersFeaturesState.updateSuccess()';
  }
}

/// @nodoc

class DeleteSuccess implements SuppliersFeaturesState {
  const DeleteSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SuppliersFeaturesState.deleteSuccess()';
  }
}

/// @nodoc

class Error implements SuppliersFeaturesState {
  const Error(this.message);

  final String message;

  /// Create a copy of SuppliersFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SuppliersFeaturesState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $SuppliersFeaturesStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of SuppliersFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
