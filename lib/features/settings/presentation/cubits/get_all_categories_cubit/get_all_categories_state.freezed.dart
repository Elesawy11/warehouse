// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllCategoriesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllCategoriesState()';
  }
}

/// @nodoc
class $GetAllCategoriesStateCopyWith<$Res> {
  $GetAllCategoriesStateCopyWith(
      GetAllCategoriesState _, $Res Function(GetAllCategoriesState) __);
}

/// Adds pattern-matching-related methods to [GetAllCategoriesState].
extension GetAllCategoriesStatePatterns on GetAllCategoriesState {
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
    TResult Function(GetAllCategoriesLoading value)? getAllCategoriesLoading,
    TResult Function(GetAllCategoriesError value)? getAllCategoriesError,
    TResult Function(GetAllCategoriesSuccess value)? getAllCategoriesSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetAllCategoriesLoading() when getAllCategoriesLoading != null:
        return getAllCategoriesLoading(_that);
      case GetAllCategoriesError() when getAllCategoriesError != null:
        return getAllCategoriesError(_that);
      case GetAllCategoriesSuccess() when getAllCategoriesSuccess != null:
        return getAllCategoriesSuccess(_that);
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
    required TResult Function(GetAllCategoriesLoading value)
        getAllCategoriesLoading,
    required TResult Function(GetAllCategoriesError value)
        getAllCategoriesError,
    required TResult Function(GetAllCategoriesSuccess value)
        getAllCategoriesSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case GetAllCategoriesLoading():
        return getAllCategoriesLoading(_that);
      case GetAllCategoriesError():
        return getAllCategoriesError(_that);
      case GetAllCategoriesSuccess():
        return getAllCategoriesSuccess(_that);
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
    TResult? Function(GetAllCategoriesLoading value)? getAllCategoriesLoading,
    TResult? Function(GetAllCategoriesError value)? getAllCategoriesError,
    TResult? Function(GetAllCategoriesSuccess value)? getAllCategoriesSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case GetAllCategoriesLoading() when getAllCategoriesLoading != null:
        return getAllCategoriesLoading(_that);
      case GetAllCategoriesError() when getAllCategoriesError != null:
        return getAllCategoriesError(_that);
      case GetAllCategoriesSuccess() when getAllCategoriesSuccess != null:
        return getAllCategoriesSuccess(_that);
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
    TResult Function()? getAllCategoriesLoading,
    TResult Function(String error)? getAllCategoriesError,
    TResult Function(List<String> categories)? getAllCategoriesSuccess,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetAllCategoriesLoading() when getAllCategoriesLoading != null:
        return getAllCategoriesLoading();
      case GetAllCategoriesError() when getAllCategoriesError != null:
        return getAllCategoriesError(_that.error);
      case GetAllCategoriesSuccess() when getAllCategoriesSuccess != null:
        return getAllCategoriesSuccess(_that.categories);
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
    required TResult Function() getAllCategoriesLoading,
    required TResult Function(String error) getAllCategoriesError,
    required TResult Function(List<String> categories) getAllCategoriesSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case GetAllCategoriesLoading():
        return getAllCategoriesLoading();
      case GetAllCategoriesError():
        return getAllCategoriesError(_that.error);
      case GetAllCategoriesSuccess():
        return getAllCategoriesSuccess(_that.categories);
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
    TResult? Function()? getAllCategoriesLoading,
    TResult? Function(String error)? getAllCategoriesError,
    TResult? Function(List<String> categories)? getAllCategoriesSuccess,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case GetAllCategoriesLoading() when getAllCategoriesLoading != null:
        return getAllCategoriesLoading();
      case GetAllCategoriesError() when getAllCategoriesError != null:
        return getAllCategoriesError(_that.error);
      case GetAllCategoriesSuccess() when getAllCategoriesSuccess != null:
        return getAllCategoriesSuccess(_that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements GetAllCategoriesState {
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
    return 'GetAllCategoriesState.initial()';
  }
}

/// @nodoc

class GetAllCategoriesLoading implements GetAllCategoriesState {
  const GetAllCategoriesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllCategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllCategoriesState.getAllCategoriesLoading()';
  }
}

/// @nodoc

class GetAllCategoriesError implements GetAllCategoriesState {
  const GetAllCategoriesError({required this.error});

  final String error;

  /// Create a copy of GetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllCategoriesErrorCopyWith<GetAllCategoriesError> get copyWith =>
      _$GetAllCategoriesErrorCopyWithImpl<GetAllCategoriesError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllCategoriesError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetAllCategoriesState.getAllCategoriesError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetAllCategoriesErrorCopyWith<$Res>
    implements $GetAllCategoriesStateCopyWith<$Res> {
  factory $GetAllCategoriesErrorCopyWith(GetAllCategoriesError value,
          $Res Function(GetAllCategoriesError) _then) =
      _$GetAllCategoriesErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetAllCategoriesErrorCopyWithImpl<$Res>
    implements $GetAllCategoriesErrorCopyWith<$Res> {
  _$GetAllCategoriesErrorCopyWithImpl(this._self, this._then);

  final GetAllCategoriesError _self;
  final $Res Function(GetAllCategoriesError) _then;

  /// Create a copy of GetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetAllCategoriesError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetAllCategoriesSuccess implements GetAllCategoriesState {
  const GetAllCategoriesSuccess({required final List<String> categories})
      : _categories = categories;

  final List<String> _categories;
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of GetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetAllCategoriesSuccessCopyWith<GetAllCategoriesSuccess> get copyWith =>
      _$GetAllCategoriesSuccessCopyWithImpl<GetAllCategoriesSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetAllCategoriesSuccess &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'GetAllCategoriesState.getAllCategoriesSuccess(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $GetAllCategoriesSuccessCopyWith<$Res>
    implements $GetAllCategoriesStateCopyWith<$Res> {
  factory $GetAllCategoriesSuccessCopyWith(GetAllCategoriesSuccess value,
          $Res Function(GetAllCategoriesSuccess) _then) =
      _$GetAllCategoriesSuccessCopyWithImpl;
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class _$GetAllCategoriesSuccessCopyWithImpl<$Res>
    implements $GetAllCategoriesSuccessCopyWith<$Res> {
  _$GetAllCategoriesSuccessCopyWithImpl(this._self, this._then);

  final GetAllCategoriesSuccess _self;
  final $Res Function(GetAllCategoriesSuccess) _then;

  /// Create a copy of GetAllCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(GetAllCategoriesSuccess(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
