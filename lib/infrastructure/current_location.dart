import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  Future<Position> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return position;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }
}
