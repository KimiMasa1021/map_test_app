import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/current_location.dart';
import '../model/map_state.dart';

abstract class MapRepository {
  Future<MapState> getLocation();
}

class MapRepositoryImple implements MapRepository {
  MapRepositoryImple(this.reader);

  final Reader reader;
  CurrentLocation currentLocation = CurrentLocation();
  @override
  Future<MapState> getLocation() async {
    final position = await currentLocation.getCurrentLocation();
    return MapState(
      lat: position.latitude,
      lon: position.longitude,
    );
  }
}

final mapRepositoryProvider =
    Provider<MapRepository>((ref) => MapRepositoryImple(ref.read));
