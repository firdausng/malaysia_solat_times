// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fb.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FbLocation> _$fbLocationSerializer = new _$FbLocationSerializer();
Serializer<FbLocationResponse> _$fbLocationResponseSerializer =
    new _$FbLocationResponseSerializer();
Serializer<FbSearchPlaceResponse> _$fbSearchPlaceResponseSerializer =
    new _$FbSearchPlaceResponseSerializer();

class _$FbLocationSerializer implements StructuredSerializer<FbLocation> {
  @override
  final Iterable<Type> types = const [FbLocation, _$FbLocation];
  @override
  final String wireName = 'FbLocation';

  @override
  Iterable serialize(Serializers serializers, FbLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.street != null) {
      result
        ..add('street')
        ..add(serializers.serialize(object.street,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FbLocation deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FbLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FbLocationResponseSerializer
    implements StructuredSerializer<FbLocationResponse> {
  @override
  final Iterable<Type> types = const [FbLocationResponse, _$FbLocationResponse];
  @override
  final String wireName = 'FbLocationResponse';

  @override
  Iterable serialize(Serializers serializers, FbLocationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(FbLocation)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FbLocationResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FbLocationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(FbLocation)) as FbLocation);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FbSearchPlaceResponseSerializer
    implements StructuredSerializer<FbSearchPlaceResponse> {
  @override
  final Iterable<Type> types = const [
    FbSearchPlaceResponse,
    _$FbSearchPlaceResponse
  ];
  @override
  final String wireName = 'FbSearchPlaceResponse';

  @override
  Iterable serialize(Serializers serializers, FbSearchPlaceResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FbLocationResponse)])),
    ];

    return result;
  }

  @override
  FbSearchPlaceResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FbSearchPlaceResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FbLocationResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FbLocation extends FbLocation {
  @override
  final String city;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String street;
  @override
  final String zip;

  factory _$FbLocation([void Function(FbLocationBuilder) updates]) =>
      (new FbLocationBuilder()..update(updates)).build();

  _$FbLocation._(
      {this.city,
      this.country,
      this.latitude,
      this.longitude,
      this.street,
      this.zip})
      : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('FbLocation', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('FbLocation', 'longitude');
    }
  }

  @override
  FbLocation rebuild(void Function(FbLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FbLocationBuilder toBuilder() => new FbLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FbLocation &&
        city == other.city &&
        country == other.country &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        street == other.street &&
        zip == other.zip;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, city.hashCode), country.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            street.hashCode),
        zip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FbLocation')
          ..add('city', city)
          ..add('country', country)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('street', street)
          ..add('zip', zip))
        .toString();
  }
}

class FbLocationBuilder implements Builder<FbLocation, FbLocationBuilder> {
  _$FbLocation _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  FbLocationBuilder();

  FbLocationBuilder get _$this {
    if (_$v != null) {
      _city = _$v.city;
      _country = _$v.country;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _street = _$v.street;
      _zip = _$v.zip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FbLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FbLocation;
  }

  @override
  void update(void Function(FbLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FbLocation build() {
    final _$result = _$v ??
        new _$FbLocation._(
            city: city,
            country: country,
            latitude: latitude,
            longitude: longitude,
            street: street,
            zip: zip);
    replace(_$result);
    return _$result;
  }
}

class _$FbLocationResponse extends FbLocationResponse {
  @override
  final FbLocation location;
  @override
  final String id;

  factory _$FbLocationResponse(
          [void Function(FbLocationResponseBuilder) updates]) =>
      (new FbLocationResponseBuilder()..update(updates)).build();

  _$FbLocationResponse._({this.location, this.id}) : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('FbLocationResponse', 'location');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('FbLocationResponse', 'id');
    }
  }

  @override
  FbLocationResponse rebuild(
          void Function(FbLocationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FbLocationResponseBuilder toBuilder() =>
      new FbLocationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FbLocationResponse &&
        location == other.location &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FbLocationResponse')
          ..add('location', location)
          ..add('id', id))
        .toString();
  }
}

class FbLocationResponseBuilder
    implements Builder<FbLocationResponse, FbLocationResponseBuilder> {
  _$FbLocationResponse _$v;

  FbLocationBuilder _location;
  FbLocationBuilder get location =>
      _$this._location ??= new FbLocationBuilder();
  set location(FbLocationBuilder location) => _$this._location = location;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  FbLocationResponseBuilder();

  FbLocationResponseBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location?.toBuilder();
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FbLocationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FbLocationResponse;
  }

  @override
  void update(void Function(FbLocationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FbLocationResponse build() {
    _$FbLocationResponse _$result;
    try {
      _$result =
          _$v ?? new _$FbLocationResponse._(location: location.build(), id: id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FbLocationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FbSearchPlaceResponse extends FbSearchPlaceResponse {
  @override
  final BuiltList<FbLocationResponse> data;

  factory _$FbSearchPlaceResponse(
          [void Function(FbSearchPlaceResponseBuilder) updates]) =>
      (new FbSearchPlaceResponseBuilder()..update(updates)).build();

  _$FbSearchPlaceResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('FbSearchPlaceResponse', 'data');
    }
  }

  @override
  FbSearchPlaceResponse rebuild(
          void Function(FbSearchPlaceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FbSearchPlaceResponseBuilder toBuilder() =>
      new FbSearchPlaceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FbSearchPlaceResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FbSearchPlaceResponse')
          ..add('data', data))
        .toString();
  }
}

class FbSearchPlaceResponseBuilder
    implements Builder<FbSearchPlaceResponse, FbSearchPlaceResponseBuilder> {
  _$FbSearchPlaceResponse _$v;

  ListBuilder<FbLocationResponse> _data;
  ListBuilder<FbLocationResponse> get data =>
      _$this._data ??= new ListBuilder<FbLocationResponse>();
  set data(ListBuilder<FbLocationResponse> data) => _$this._data = data;

  FbSearchPlaceResponseBuilder();

  FbSearchPlaceResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FbSearchPlaceResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FbSearchPlaceResponse;
  }

  @override
  void update(void Function(FbSearchPlaceResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FbSearchPlaceResponse build() {
    _$FbSearchPlaceResponse _$result;
    try {
      _$result = _$v ?? new _$FbSearchPlaceResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FbSearchPlaceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
