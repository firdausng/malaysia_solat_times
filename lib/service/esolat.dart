import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'esolat.g.dart';

abstract class SirimTime implements Built<SirimTime, SirimTimeBuilder> {
  static Serializer<SirimTime> get serializer => _$sirimTimeSerializer;
  int get serverTimestamp;
  String get date;

  factory SirimTime([updates(SirimTimeBuilder b)]) = _$SirimTime;
  SirimTime._();
}

abstract class TarikhTakwim
    implements Built<TarikhTakwim, TarikhTakwimBuilder> {
  static Serializer<TarikhTakwim> get serializer => _$tarikhTakwimSerializer;

  String get dateRequest;
  String get dateType;
  String get serverTime;
  String get status;
  BuiltMap<String, String> get takwim;

  TarikhTakwim._();
  factory TarikhTakwim([void Function(TarikhTakwimBuilder) updates]) =
      _$TarikhTakwim;
}

abstract class TakwimSolat implements Built<TakwimSolat, TakwimSolatBuilder> {
  static Serializer<TakwimSolat> get serializer => _$takwimSolatSerializer;

  String get bearing;
  String get lang;
  String get periodType;
  String get serverTime;
  String get status;
  String get zone;
  BuiltList<PrayerTime> get prayerTime;

  TakwimSolat._();
  factory TakwimSolat([void Function(TakwimSolatBuilder) updates]) =
      _$TakwimSolat;
}

abstract class PrayerTime implements Built<PrayerTime, PrayerTimeBuilder> {
  static Serializer<PrayerTime> get serializer => _$prayerTimeSerializer;

  String get asr;
  String get date;
  String get day;
  String get dhuhr;
  String get fajr;
  String get hijri;
  String get imsak;
  String get isha;
  String get maghrib;
  String get syuruk;

  PrayerTime._();
  factory PrayerTime([void Function(PrayerTimeBuilder) updates]) = _$PrayerTime;
}
