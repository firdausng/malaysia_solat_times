import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:malaysia_solat_times/service/esolat.dart';
import 'package:malaysia_solat_times/service/fb.dart';
import 'package:malaysia_solat_times/service/serializers.dart';

void main() {
  test("SirimTime serializer test", () {
    const jsonString =
        '{"serverTimestamp":1561481937000,"date":"2019-06-26 00:58:57"}';

    final dateVal = serializers.deserializeWith(
        SirimTime.serializer, json.decode(jsonString));
    expect(dateVal.date, "2019-06-26 00:58:57");
  });

  test("FBlocation serializer test", () {
    const jsonString = """
        {
          "data": [
              {
                  "location": {
                      "city": "Putrajaya",
                      "country": "Malaysia",
                      "latitude": 2.9360666666667,
                      "longitude": 101.68905,
                      "street": "Putrajaya",
                      "zip": "62000"
                  },
                  "id": "537600909602621"
              },
              {
                  "location": {
                      "city": "Medan",
                      "country": "Indonesia",
                      "latitude": 3.575111,
                      "longitude": 98.687321
                  },
                  "id": "995080857206651"
              }
          ],
          "paging": {
              "cursors": {
                  "after": "MQZDZD"
              },
              "next": "https://graph.facebook.com/v3.3/search?access_token=2423517067935205%7C4GGBZBGOqokwlvHiDcjRxOadMbc&fields=location&q=mosque&type=place&limit=2&after=MQZDZD"
          }
      } 
        """;

    FbSearchPlaceResponse result = serializers.deserialize(
      json.decode(jsonString),
      specifiedType: FullType(
        FbSearchPlaceResponse,
        [
          FullType(FbLocationResponse),
        ],
      ),
    );

//    final dateVal = serializers.deserializeWith(
//        SirimTime.serializer, json.decode(jsonString));
    expect(result.data.first.location.city, "Putrajaya");
  });
}
