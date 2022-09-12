import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_test_app/model/evacuation.dart';

import '../../provider/general_provider.dart';

class MapPage extends HookConsumerWidget {
  MapPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapCreated = useState(false);
    final state = ref.watch(mapViewModelProvider);
    final pageController = PageController(
      viewportFraction: 0.9, //0.85くらいで端っこに別のカードが見えてる感じになる
    );
    final evacuations = [
      Evacuation(
        uid: "1",
        name: "きみなりた",
        address: "二戸",
        lat: 40.24946895930144,
        lon: 141.29249788820744,
      ),
      Evacuation(
        uid: "2",
        name: "きみなりた",
        address: "二戸",
        lat: 40.25444978453127,
        lon: 141.28925576806068,
      ),
      Evacuation(
        uid: "3",
        name: "きみなりた",
        address: "二戸",
        lat: 40.25971322149635,
        lon: 141.28554996103048,
      ),
      Evacuation(
        uid: "4",
        name: "きみなりた",
        address: "二戸",
        lat: 40.24946895930144,
        lon: 141.29249788820744,
      ),
    ];
    List<Widget> _shopTiles() {
      final shopTiles = evacuations.map(
        (shop) {
          return Card(
            child: SizedBox(
              height: 140,
              child: Center(
                child: Text(shop.name),
              ),
            ),
          );
        },
      ).toList();
      return shopTiles;
    }

    Completer<GoogleMapController> _controller = Completer();

    return Scaffold(
      body: state.when(
        data: (data) {
          return SafeArea(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(data.lat!, data.lon!),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) async {
                    _controller.complete(controller);
                    mapCreated.value = true;
                  },
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  mapToolbarEnabled: false,
                  compassEnabled: false,
                  zoomControlsEnabled: false,
                  onTap: (LatLng latLang) {
                    debugPrint(latLang.toString());
                  },
                  markers: evacuations.map(
                    (evacuation) {
                      return Marker(
                        markerId: MarkerId(evacuation.uid),
                        position: LatLng(evacuation.lat, evacuation.lon),
                        icon: BitmapDescriptor.defaultMarker,
                        onTap: () async {},
                      );
                    },
                  ).toSet(),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: PageView(
                    onPageChanged: (int index) async {
                      final selectedShop = evacuations.elementAt(index);
                      final GoogleMapController controller =
                          await _controller.future;
                      final zoomLevel = await controller.getZoomLevel();
                      controller.animateCamera(
                        CameraUpdate.newCameraPosition(
                          CameraPosition(
                            target: LatLng(selectedShop.lat, selectedShop.lon),
                            zoom: zoomLevel,
                          ),
                        ),
                      );
                    },
                    controller: pageController,
                    children: _shopTiles(),
                  ),
                ),
                !mapCreated.value
                    ? Container(
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox(),
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
