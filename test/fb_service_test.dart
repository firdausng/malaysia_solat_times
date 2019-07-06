import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:malaysia_solat_times/service/esolat.dart';
import 'package:malaysia_solat_times/service/fb.dart';
import 'package:malaysia_solat_times/service/fb_place_service.dart';
import 'package:malaysia_solat_times/service/serializers.dart';

void main() {
  test("Get current city", () async {
    var fbService = FbService();
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    FbSearchPlaceResponse place =
        await fbService.searchPlace(position.latitude, position.longitude);

    expect(place.data.first.location.city, "2019-06-26 00:58:57");
  });
}
