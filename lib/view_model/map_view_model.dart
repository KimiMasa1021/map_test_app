import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_test_app/model/map_state.dart';
import 'package:map_test_app/repository/map_repository.dart';

class MapViewModel extends StateNotifier<AsyncValue<MapState>> {
  MapViewModel({required ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  final AutoDisposeStateNotifierProviderRef _ref;
  late final MapRepository mapRepository = _ref.watch(mapRepositoryProvider);

  void load() async {
    final result = await mapRepository.getLocation();
    state = AsyncData(
      MapState(
        lat: result.lat,
        lon: result.lon,
      ),
    );
  }
}
