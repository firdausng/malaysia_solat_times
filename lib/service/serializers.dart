library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'esolat.dart';
import 'fb.dart';

part 'serializers.g.dart';

@SerializersFor([
  SirimTime,
  TarikhTakwim,
  PrayerTime,
  TakwimSolat,
  FbLocation,
  FbLocationResponse,
  FbSearchPlaceResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
