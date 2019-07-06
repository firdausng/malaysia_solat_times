import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fb.g.dart';

abstract class FbLocation implements Built<FbLocation, FbLocationBuilder> {
  static Serializer<FbLocation> get serializer => _$fbLocationSerializer;

  @nullable
  String get city;
  @nullable
  String get country;
  double get latitude;
  double get longitude;
  @nullable
  String get street;
  @nullable
  String get zip;

  FbLocation._();
  factory FbLocation([void Function(FbLocationBuilder) updates]) = _$FbLocation;
}

abstract class FbLocationResponse
    implements Built<FbLocationResponse, FbLocationResponseBuilder> {
  static Serializer<FbLocationResponse> get serializer =>
      _$fbLocationResponseSerializer;

  FbLocation get location;
  String get id;

  FbLocationResponse._();
  factory FbLocationResponse(
          [void Function(FbLocationResponseBuilder) updates]) =
      _$FbLocationResponse;
}

abstract class FbSearchPlaceResponse
    implements Built<FbSearchPlaceResponse, FbSearchPlaceResponseBuilder> {
  static Serializer<FbSearchPlaceResponse> get serializer =>
      _$fbSearchPlaceResponseSerializer;
  BuiltList<FbLocationResponse> get data;

  FbSearchPlaceResponse._();
  factory FbSearchPlaceResponse(
          [void Function(FbSearchPlaceResponseBuilder) updates]) =
      _$FbSearchPlaceResponse;
}

//abstract class FbResponse<T>
//    implements Built<FbResponse<T>, FbResponseBuilder<T>> {
//  static Serializer<FbResponse> get serializer => _$fbResponseSerializer;
//  BuiltList<T> get data;
//  FbResponse._();
//  factory FbResponse([void Function(FbResponseBuilder<T>) updates]) =
//      _$FbResponse<T>;
//}

//class FbLocation {
//  String city;
//  String country;
//  String latitude;
//  String longitude;
//  String street;
//  String zip;
//}

//class FbLocationResponse {
//  String location;
//  String id;
//}

//class FbResponse<T> {
//  List<T> data;
//}
