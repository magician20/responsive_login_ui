// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  ThemeChanged themeChanged(AppTheme appTheme) {
    return ThemeChanged(
      appTheme,
    );
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  AppTheme get appTheme => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme appTheme) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTheme appTheme)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme appTheme)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({AppTheme appTheme});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object? appTheme = freezed,
  }) {
    return _then(_value.copyWith(
      appTheme: appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc
abstract class $ThemeChangedCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory $ThemeChangedCopyWith(
          ThemeChanged value, $Res Function(ThemeChanged) then) =
      _$ThemeChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme appTheme});
}

/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(
      ThemeChanged _value, $Res Function(ThemeChanged) _then)
      : super(_value, (v) => _then(v as ThemeChanged));

  @override
  ThemeChanged get _value => super._value as ThemeChanged;

  @override
  $Res call({
    Object? appTheme = freezed,
  }) {
    return _then(ThemeChanged(
      appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$ThemeChanged implements ThemeChanged {
  const _$ThemeChanged(this.appTheme);

  @override
  final AppTheme appTheme;

  @override
  String toString() {
    return 'ThemeEvent.themeChanged(appTheme: $appTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChanged &&
            const DeepCollectionEquality().equals(other.appTheme, appTheme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appTheme));

  @JsonKey(ignore: true)
  @override
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme appTheme) themeChanged,
  }) {
    return themeChanged(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTheme appTheme)? themeChanged,
  }) {
    return themeChanged?.call(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme appTheme)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(appTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements ThemeEvent {
  const factory ThemeChanged(AppTheme appTheme) = _$ThemeChanged;

  @override
  AppTheme get appTheme;
  @override
  @JsonKey(ignore: true)
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeState call({ThemeData? themeData}) {
    return _ThemeState(
      themeData: themeData,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeData? get themeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData? themeData});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? themeData = freezed,
  }) {
    return _then(_value.copyWith(
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData? themeData});
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object? themeData = freezed,
  }) {
    return _then(_ThemeState(
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({this.themeData});

  @override
  final ThemeData? themeData;

  @override
  String toString() {
    return 'ThemeState(themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeState &&
            const DeepCollectionEquality().equals(other.themeData, themeData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeData));

  @JsonKey(ignore: true)
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({ThemeData? themeData}) = _$_ThemeState;

  @override
  ThemeData? get themeData;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
