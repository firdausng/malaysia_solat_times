import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'esolat.dart';
import 'serializers.dart';

class EsolatService {
  var url = 'https://www.e-solat.gov.my/index.php?r=esolatApi';

  Future<SirimTime> getSirimTime() async {
    Response response = await http.get("$url/SirimTime");
    String bodyResponse = response.body;

    SirimTime result = serializers.deserializeWith(
        SirimTime.serializer, json.decode(bodyResponse));
    return result;
  }

  Future<TarikhTakwim> getTarikhTakwim() async {
    Response response =
        await http.get("$url/tarikhtakwim&period=today&datetype=miladi");
    String bodyResponse = response.body;

    TarikhTakwim result = serializers.deserializeWith(
        TarikhTakwim.serializer, json.decode(bodyResponse));
    return result;
  }

  Future<TakwimSolat> getTakwimSolat({String zone = "WLY01"}) async {
    Response response =
        await http.get("$url/TakwimSolat&period=today&zone=$zone");
    String bodyResponse = response.body;

    TakwimSolat result = serializers.deserializeWith(
        TakwimSolat.serializer, json.decode(bodyResponse));
    return result;
  }
}
