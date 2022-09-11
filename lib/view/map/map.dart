import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/general_provider.dart';

class MapPage extends HookConsumerWidget {
  MapPage({super.key});
  late GoogleMapController _controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mapViewModelProvider);
    return Scaffold(
      body: state.when(
        data: (data) {
          return SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(data.lat!, data.lon!),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller = controller;
                  },
                  // markers: _createMarker(),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  mapToolbarEnabled: false,
                  onTap: (LatLng latLang) {},
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return const Center(
            child: Text("エラーです。"),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
