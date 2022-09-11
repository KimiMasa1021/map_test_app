// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapState {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call({double? lat, double? lon});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$$_MapStateCopyWith(
          _$_MapState value, $Res Function(_$_MapState) then) =
      __$$_MapStateCopyWithImpl<$Res>;
  @override
  $Res call({double? lat, double? lon});
}

/// @nodoc
class __$$_MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$$_MapStateCopyWith<$Res> {
  __$$_MapStateCopyWithImpl(
      _$_MapState _value, $Res Function(_$_MapState) _then)
      : super(_value, (v) => _then(v as _$_MapState));

  @override
  _$_MapState get _value => super._value as _$_MapState;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_MapState(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  _$_MapState({this.lat, this.lon});

  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'MapState(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapState &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      __$$_MapStateCopyWithImpl<_$_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState({final double? lat, final double? lon}) = _$_MapState;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
