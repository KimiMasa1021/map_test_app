import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_state.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class MapState with _$MapState {
  factory MapState({
    double? lat,
    double? lon,
  }) = _MapState;
}
