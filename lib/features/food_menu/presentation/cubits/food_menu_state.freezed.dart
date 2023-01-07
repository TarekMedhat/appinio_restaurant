// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodMenuState {
  FoodMenuStateModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodMenuStateModel model) initial,
    required TResult Function(FoodMenuStateModel model) loading,
    required TResult Function(FoodMenuStateModel model) success,
    required TResult Function(String error, FoodMenuStateModel model) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodMenuStateModel model)? initial,
    TResult? Function(FoodMenuStateModel model)? loading,
    TResult? Function(FoodMenuStateModel model)? success,
    TResult? Function(String error, FoodMenuStateModel model)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodMenuStateModel model)? initial,
    TResult Function(FoodMenuStateModel model)? loading,
    TResult Function(FoodMenuStateModel model)? success,
    TResult Function(String error, FoodMenuStateModel model)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodMenuStateCopyWith<FoodMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodMenuStateCopyWith<$Res> {
  factory $FoodMenuStateCopyWith(
          FoodMenuState value, $Res Function(FoodMenuState) then) =
      _$FoodMenuStateCopyWithImpl<$Res, FoodMenuState>;
  @useResult
  $Res call({FoodMenuStateModel model});

  $FoodMenuStateModelCopyWith<$Res> get model;
}

/// @nodoc
class _$FoodMenuStateCopyWithImpl<$Res, $Val extends FoodMenuState>
    implements $FoodMenuStateCopyWith<$Res> {
  _$FoodMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FoodMenuStateModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodMenuStateModelCopyWith<$Res> get model {
    return $FoodMenuStateModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FoodMenuStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodMenuStateModel model});

  @override
  $FoodMenuStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FoodMenuStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Initial(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FoodMenuStateModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.model});

  @override
  final FoodMenuStateModel model;

  @override
  String toString() {
    return 'FoodMenuState.initial(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodMenuStateModel model) initial,
    required TResult Function(FoodMenuStateModel model) loading,
    required TResult Function(FoodMenuStateModel model) success,
    required TResult Function(String error, FoodMenuStateModel model) failure,
  }) {
    return initial(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodMenuStateModel model)? initial,
    TResult? Function(FoodMenuStateModel model)? loading,
    TResult? Function(FoodMenuStateModel model)? success,
    TResult? Function(String error, FoodMenuStateModel model)? failure,
  }) {
    return initial?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodMenuStateModel model)? initial,
    TResult Function(FoodMenuStateModel model)? loading,
    TResult Function(FoodMenuStateModel model)? success,
    TResult Function(String error, FoodMenuStateModel model)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FoodMenuState {
  const factory _Initial({required final FoodMenuStateModel model}) =
      _$_Initial;

  @override
  FoodMenuStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $FoodMenuStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodMenuStateModel model});

  @override
  $FoodMenuStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FoodMenuStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Loading(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FoodMenuStateModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.model});

  @override
  final FoodMenuStateModel model;

  @override
  String toString() {
    return 'FoodMenuState.loading(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodMenuStateModel model) initial,
    required TResult Function(FoodMenuStateModel model) loading,
    required TResult Function(FoodMenuStateModel model) success,
    required TResult Function(String error, FoodMenuStateModel model) failure,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodMenuStateModel model)? initial,
    TResult? Function(FoodMenuStateModel model)? loading,
    TResult? Function(FoodMenuStateModel model)? success,
    TResult? Function(String error, FoodMenuStateModel model)? failure,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodMenuStateModel model)? initial,
    TResult Function(FoodMenuStateModel model)? loading,
    TResult Function(FoodMenuStateModel model)? success,
    TResult Function(String error, FoodMenuStateModel model)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FoodMenuState {
  const factory _Loading({required final FoodMenuStateModel model}) =
      _$_Loading;

  @override
  FoodMenuStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $FoodMenuStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodMenuStateModel model});

  @override
  $FoodMenuStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$FoodMenuStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_Success(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FoodMenuStateModel,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.model});

  @override
  final FoodMenuStateModel model;

  @override
  String toString() {
    return 'FoodMenuState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodMenuStateModel model) initial,
    required TResult Function(FoodMenuStateModel model) loading,
    required TResult Function(FoodMenuStateModel model) success,
    required TResult Function(String error, FoodMenuStateModel model) failure,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodMenuStateModel model)? initial,
    TResult? Function(FoodMenuStateModel model)? loading,
    TResult? Function(FoodMenuStateModel model)? success,
    TResult? Function(String error, FoodMenuStateModel model)? failure,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodMenuStateModel model)? initial,
    TResult Function(FoodMenuStateModel model)? loading,
    TResult Function(FoodMenuStateModel model)? success,
    TResult Function(String error, FoodMenuStateModel model)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FoodMenuState {
  const factory _Success({required final FoodMenuStateModel model}) =
      _$_Success;

  @override
  FoodMenuStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $FoodMenuStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, FoodMenuStateModel model});

  @override
  $FoodMenuStateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FoodMenuStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? model = null,
  }) {
    return _then(_$_Failure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FoodMenuStateModel,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.error, required this.model});

  @override
  final String error;
  @override
  final FoodMenuStateModel model;

  @override
  String toString() {
    return 'FoodMenuState.failure(error: $error, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FoodMenuStateModel model) initial,
    required TResult Function(FoodMenuStateModel model) loading,
    required TResult Function(FoodMenuStateModel model) success,
    required TResult Function(String error, FoodMenuStateModel model) failure,
  }) {
    return failure(error, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FoodMenuStateModel model)? initial,
    TResult? Function(FoodMenuStateModel model)? loading,
    TResult? Function(FoodMenuStateModel model)? success,
    TResult? Function(String error, FoodMenuStateModel model)? failure,
  }) {
    return failure?.call(error, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FoodMenuStateModel model)? initial,
    TResult Function(FoodMenuStateModel model)? loading,
    TResult Function(FoodMenuStateModel model)? success,
    TResult Function(String error, FoodMenuStateModel model)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FoodMenuState {
  const factory _Failure(
      {required final String error,
      required final FoodMenuStateModel model}) = _$_Failure;

  String get error;
  @override
  FoodMenuStateModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodMenuStateModel {
  List<FoodItem> get menuItems => throw _privateConstructorUsedError;
  List<FoodItem> get filteredMenuItems => throw _privateConstructorUsedError;
  List<FoodItem> get favoriteFoodItems => throw _privateConstructorUsedError;
  List<FoodItem> get filteredFavoriteFoodItems =>
      throw _privateConstructorUsedError;
  String get favoriteItemsSearchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodMenuStateModelCopyWith<FoodMenuStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodMenuStateModelCopyWith<$Res> {
  factory $FoodMenuStateModelCopyWith(
          FoodMenuStateModel value, $Res Function(FoodMenuStateModel) then) =
      _$FoodMenuStateModelCopyWithImpl<$Res, FoodMenuStateModel>;
  @useResult
  $Res call(
      {List<FoodItem> menuItems,
      List<FoodItem> filteredMenuItems,
      List<FoodItem> favoriteFoodItems,
      List<FoodItem> filteredFavoriteFoodItems,
      String favoriteItemsSearchQuery});
}

/// @nodoc
class _$FoodMenuStateModelCopyWithImpl<$Res, $Val extends FoodMenuStateModel>
    implements $FoodMenuStateModelCopyWith<$Res> {
  _$FoodMenuStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
    Object? filteredMenuItems = null,
    Object? favoriteFoodItems = null,
    Object? filteredFavoriteFoodItems = null,
    Object? favoriteItemsSearchQuery = null,
  }) {
    return _then(_value.copyWith(
      menuItems: null == menuItems
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      filteredMenuItems: null == filteredMenuItems
          ? _value.filteredMenuItems
          : filteredMenuItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      favoriteFoodItems: null == favoriteFoodItems
          ? _value.favoriteFoodItems
          : favoriteFoodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      filteredFavoriteFoodItems: null == filteredFavoriteFoodItems
          ? _value.filteredFavoriteFoodItems
          : filteredFavoriteFoodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      favoriteItemsSearchQuery: null == favoriteItemsSearchQuery
          ? _value.favoriteItemsSearchQuery
          : favoriteItemsSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodMenuStateModelCopyWith<$Res>
    implements $FoodMenuStateModelCopyWith<$Res> {
  factory _$$_FoodMenuStateModelCopyWith(_$_FoodMenuStateModel value,
          $Res Function(_$_FoodMenuStateModel) then) =
      __$$_FoodMenuStateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FoodItem> menuItems,
      List<FoodItem> filteredMenuItems,
      List<FoodItem> favoriteFoodItems,
      List<FoodItem> filteredFavoriteFoodItems,
      String favoriteItemsSearchQuery});
}

/// @nodoc
class __$$_FoodMenuStateModelCopyWithImpl<$Res>
    extends _$FoodMenuStateModelCopyWithImpl<$Res, _$_FoodMenuStateModel>
    implements _$$_FoodMenuStateModelCopyWith<$Res> {
  __$$_FoodMenuStateModelCopyWithImpl(
      _$_FoodMenuStateModel _value, $Res Function(_$_FoodMenuStateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
    Object? filteredMenuItems = null,
    Object? favoriteFoodItems = null,
    Object? filteredFavoriteFoodItems = null,
    Object? favoriteItemsSearchQuery = null,
  }) {
    return _then(_$_FoodMenuStateModel(
      menuItems: null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      filteredMenuItems: null == filteredMenuItems
          ? _value._filteredMenuItems
          : filteredMenuItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      favoriteFoodItems: null == favoriteFoodItems
          ? _value._favoriteFoodItems
          : favoriteFoodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      filteredFavoriteFoodItems: null == filteredFavoriteFoodItems
          ? _value._filteredFavoriteFoodItems
          : filteredFavoriteFoodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
      favoriteItemsSearchQuery: null == favoriteItemsSearchQuery
          ? _value.favoriteItemsSearchQuery
          : favoriteItemsSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FoodMenuStateModel implements _FoodMenuStateModel {
  const _$_FoodMenuStateModel(
      {final List<FoodItem> menuItems = const [],
      final List<FoodItem> filteredMenuItems = const [],
      final List<FoodItem> favoriteFoodItems = const [],
      final List<FoodItem> filteredFavoriteFoodItems = const [],
      this.favoriteItemsSearchQuery = ''})
      : _menuItems = menuItems,
        _filteredMenuItems = filteredMenuItems,
        _favoriteFoodItems = favoriteFoodItems,
        _filteredFavoriteFoodItems = filteredFavoriteFoodItems;

  final List<FoodItem> _menuItems;
  @override
  @JsonKey()
  List<FoodItem> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  final List<FoodItem> _filteredMenuItems;
  @override
  @JsonKey()
  List<FoodItem> get filteredMenuItems {
    if (_filteredMenuItems is EqualUnmodifiableListView)
      return _filteredMenuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredMenuItems);
  }

  final List<FoodItem> _favoriteFoodItems;
  @override
  @JsonKey()
  List<FoodItem> get favoriteFoodItems {
    if (_favoriteFoodItems is EqualUnmodifiableListView)
      return _favoriteFoodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteFoodItems);
  }

  final List<FoodItem> _filteredFavoriteFoodItems;
  @override
  @JsonKey()
  List<FoodItem> get filteredFavoriteFoodItems {
    if (_filteredFavoriteFoodItems is EqualUnmodifiableListView)
      return _filteredFavoriteFoodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredFavoriteFoodItems);
  }

  @override
  @JsonKey()
  final String favoriteItemsSearchQuery;

  @override
  String toString() {
    return 'FoodMenuStateModel(menuItems: $menuItems, filteredMenuItems: $filteredMenuItems, favoriteFoodItems: $favoriteFoodItems, filteredFavoriteFoodItems: $filteredFavoriteFoodItems, favoriteItemsSearchQuery: $favoriteItemsSearchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodMenuStateModel &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems) &&
            const DeepCollectionEquality()
                .equals(other._filteredMenuItems, _filteredMenuItems) &&
            const DeepCollectionEquality()
                .equals(other._favoriteFoodItems, _favoriteFoodItems) &&
            const DeepCollectionEquality().equals(
                other._filteredFavoriteFoodItems, _filteredFavoriteFoodItems) &&
            (identical(
                    other.favoriteItemsSearchQuery, favoriteItemsSearchQuery) ||
                other.favoriteItemsSearchQuery == favoriteItemsSearchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_menuItems),
      const DeepCollectionEquality().hash(_filteredMenuItems),
      const DeepCollectionEquality().hash(_favoriteFoodItems),
      const DeepCollectionEquality().hash(_filteredFavoriteFoodItems),
      favoriteItemsSearchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodMenuStateModelCopyWith<_$_FoodMenuStateModel> get copyWith =>
      __$$_FoodMenuStateModelCopyWithImpl<_$_FoodMenuStateModel>(
          this, _$identity);
}

abstract class _FoodMenuStateModel implements FoodMenuStateModel {
  const factory _FoodMenuStateModel(
      {final List<FoodItem> menuItems,
      final List<FoodItem> filteredMenuItems,
      final List<FoodItem> favoriteFoodItems,
      final List<FoodItem> filteredFavoriteFoodItems,
      final String favoriteItemsSearchQuery}) = _$_FoodMenuStateModel;

  @override
  List<FoodItem> get menuItems;
  @override
  List<FoodItem> get filteredMenuItems;
  @override
  List<FoodItem> get favoriteFoodItems;
  @override
  List<FoodItem> get filteredFavoriteFoodItems;
  @override
  String get favoriteItemsSearchQuery;
  @override
  @JsonKey(ignore: true)
  _$$_FoodMenuStateModelCopyWith<_$_FoodMenuStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
