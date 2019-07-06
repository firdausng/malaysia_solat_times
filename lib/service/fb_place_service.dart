import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:malaysia_solat_times/service/serializers.dart';

import 'fb.dart';

class FbService {
  final String fbAccessToken = '2423517067935205|4GGBZBGOqokwlvHiDcjRxOadMbc';

  var url = 'https://graph.facebook.com/v3.2/search';
  FbService();

  Future<FbSearchPlaceResponse> searchPlace(
      double latitude, double longitude) async {
    var distance = 1000;
    Response response = await http.get(
        "$url?type=place&center=$latitude,$longitude&distance=$distance&q=mosque&fields=name,location&limit=1&access_token=$fbAccessToken");
    String bodyResponse = response.body;

    FbSearchPlaceResponse result = serializers.deserialize(
      json.decode(bodyResponse),
      specifiedType: FullType(
        FbSearchPlaceResponse,
        [FullType(FbLocationResponse)],
      ),
    );
    return result;
  }
}
