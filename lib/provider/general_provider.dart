import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/map_state.dart';
import '../view_model/map_view_model.dart';

final mapViewModelProvider =
    StateNotifierProvider.autoDispose<MapViewModel, AsyncValue<MapState>>(
  (ref) => MapViewModel(ref: ref),
);
