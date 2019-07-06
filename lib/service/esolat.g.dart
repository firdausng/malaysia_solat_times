// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esolat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SirimTime> _$sirimTimeSerializer = new _$SirimTimeSerializer();
Serializer<TarikhTakwim> _$tarikhTakwimSerializer =
    new _$TarikhTakwimSerializer();
Serializer<TakwimSolat> _$takwimSolatSerializer = new _$TakwimSolatSerializer();
Serializer<PrayerTime> _$prayerTimeSerializer = new _$PrayerTimeSerializer();

class _$SirimTimeSerializer implements StructuredSerializer<SirimTime> {
  @override
  final Iterable<Type> types = const [SirimTime, _$SirimTime];
  @override
  final String wireName = 'SirimTime';

  @override
  Iterable serialize(Serializers serializers, SirimTime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'serverTimestamp',
      serializers.serialize(object.serverTimestamp,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SirimTime deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SirimTimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'serverTimestamp':
          result.serverTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TarikhTakwimSerializer implements StructuredSerializer<TarikhTakwim> {
  @override
  final Iterable<Type> types = const [TarikhTakwim, _$TarikhTakwim];
  @override
  final String wireName = 'TarikhTakwim';

  @override
  Iterable serialize(Serializers serializers, TarikhTakwim object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'dateRequest',
      serializers.serialize(object.dateRequest,
          specifiedType: const FullType(String)),
      'dateType',
      serializers.serialize(object.dateType,
          specifiedType: const FullType(String)),
      'serverTime',
      serializers.serialize(object.serverTime,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'takwim',
      serializers.serialize(object.takwim,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  TarikhTakwim deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TarikhTakwimBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dateRequest':
          result.dateRequest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateType':
          result.dateType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverTime':
          result.serverTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'takwim':
          result.takwim.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$TakwimSolatSerializer implements StructuredSerializer<TakwimSolat> {
  @override
  final Iterable<Type> types = const [TakwimSolat, _$TakwimSolat];
  @override
  final String wireName = 'TakwimSolat';

  @override
  Iterable serialize(Serializers serializers, TakwimSolat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bearing',
      serializers.serialize(object.bearing,
          specifiedType: const FullType(String)),
      'lang',
      serializers.serialize(object.lang, specifiedType: const FullType(String)),
      'periodType',
      serializers.serialize(object.periodType,
          specifiedType: const FullType(String)),
      'serverTime',
      serializers.serialize(object.serverTime,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'zone',
      serializers.serialize(object.zone, specifiedType: const FullType(String)),
      'prayerTime',
      serializers.serialize(object.prayerTime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PrayerTime)])),
    ];

    return result;
  }

  @override
  TakwimSolat deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TakwimSolatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bearing':
          result.bearing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lang':
          result.lang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'periodType':
          result.periodType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverTime':
          result.serverTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zone':
          result.zone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prayerTime':
          result.prayerTime.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(PrayerTime)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$PrayerTimeSerializer implements StructuredSerializer<PrayerTime> {
  @override
  final Iterable<Type> types = const [PrayerTime, _$PrayerTime];
  @override
  final String wireName = 'PrayerTime';

  @override
  Iterable serialize(Serializers serializers, PrayerTime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'asr',
      serializers.serialize(object.asr, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(String)),
      'dhuhr',
      serializers.serialize(object.dhuhr,
          specifiedType: const FullType(String)),
      'fajr',
      serializers.serialize(object.fajr, specifiedType: const FullType(String)),
      'hijri',
      serializers.serialize(object.hijri,
          specifiedType: const FullType(String)),
      'imsak',
      serializers.serialize(object.imsak,
          specifiedType: const FullType(String)),
      'isha',
      serializers.serialize(object.isha, specifiedType: const FullType(String)),
      'maghrib',
      serializers.serialize(object.maghrib,
          specifiedType: const FullType(String)),
      'syuruk',
      serializers.serialize(object.syuruk,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PrayerTime deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrayerTimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'asr':
          result.asr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dhuhr':
          result.dhuhr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fajr':
          result.fajr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hijri':
          result.hijri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imsak':
          result.imsak = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isha':
          result.isha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maghrib':
          result.maghrib = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'syuruk':
          result.syuruk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SirimTime extends SirimTime {
  @override
  final int serverTimestamp;
  @override
  final String date;

  factory _$SirimTime([void Function(SirimTimeBuilder) updates]) =>
      (new SirimTimeBuilder()..update(updates)).build();

  _$SirimTime._({this.serverTimestamp, this.date}) : super._() {
    if (serverTimestamp == null) {
      throw new BuiltValueNullFieldError('SirimTime', 'serverTimestamp');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SirimTime', 'date');
    }
  }

  @override
  SirimTime rebuild(void Function(SirimTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SirimTimeBuilder toBuilder() => new SirimTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SirimTime &&
        serverTimestamp == other.serverTimestamp &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, serverTimestamp.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SirimTime')
          ..add('serverTimestamp', serverTimestamp)
          ..add('date', date))
        .toString();
  }
}

class SirimTimeBuilder implements Builder<SirimTime, SirimTimeBuilder> {
  _$SirimTime _$v;

  int _serverTimestamp;
  int get serverTimestamp => _$this._serverTimestamp;
  set serverTimestamp(int serverTimestamp) =>
      _$this._serverTimestamp = serverTimestamp;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  SirimTimeBuilder();

  SirimTimeBuilder get _$this {
    if (_$v != null) {
      _serverTimestamp = _$v.serverTimestamp;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SirimTime other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SirimTime;
  }

  @override
  void update(void Function(SirimTimeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SirimTime build() {
    final _$result =
        _$v ?? new _$SirimTime._(serverTimestamp: serverTimestamp, date: date);
    replace(_$result);
    return _$result;
  }
}

class _$TarikhTakwim extends TarikhTakwim {
  @override
  final String dateRequest;
  @override
  final String dateType;
  @override
  final String serverTime;
  @override
  final String status;
  @override
  final BuiltMap<String, String> takwim;

  factory _$TarikhTakwim([void Function(TarikhTakwimBuilder) updates]) =>
      (new TarikhTakwimBuilder()..update(updates)).build();

  _$TarikhTakwim._(
      {this.dateRequest,
      this.dateType,
      this.serverTime,
      this.status,
      this.takwim})
      : super._() {
    if (dateRequest == null) {
      throw new BuiltValueNullFieldError('TarikhTakwim', 'dateRequest');
    }
    if (dateType == null) {
      throw new BuiltValueNullFieldError('TarikhTakwim', 'dateType');
    }
    if (serverTime == null) {
      throw new BuiltValueNullFieldError('TarikhTakwim', 'serverTime');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('TarikhTakwim', 'status');
    }
    if (takwim == null) {
      throw new BuiltValueNullFieldError('TarikhTakwim', 'takwim');
    }
  }

  @override
  TarikhTakwim rebuild(void Function(TarikhTakwimBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TarikhTakwimBuilder toBuilder() => new TarikhTakwimBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TarikhTakwim &&
        dateRequest == other.dateRequest &&
        dateType == other.dateType &&
        serverTime == other.serverTime &&
        status == other.status &&
        takwim == other.takwim;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, dateRequest.hashCode), dateType.hashCode),
                serverTime.hashCode),
            status.hashCode),
        takwim.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TarikhTakwim')
          ..add('dateRequest', dateRequest)
          ..add('dateType', dateType)
          ..add('serverTime', serverTime)
          ..add('status', status)
          ..add('takwim', takwim))
        .toString();
  }
}

class TarikhTakwimBuilder
    implements Builder<TarikhTakwim, TarikhTakwimBuilder> {
  _$TarikhTakwim _$v;

  String _dateRequest;
  String get dateRequest => _$this._dateRequest;
  set dateRequest(String dateRequest) => _$this._dateRequest = dateRequest;

  String _dateType;
  String get dateType => _$this._dateType;
  set dateType(String dateType) => _$this._dateType = dateType;

  String _serverTime;
  String get serverTime => _$this._serverTime;
  set serverTime(String serverTime) => _$this._serverTime = serverTime;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  MapBuilder<String, String> _takwim;
  MapBuilder<String, String> get takwim =>
      _$this._takwim ??= new MapBuilder<String, String>();
  set takwim(MapBuilder<String, String> takwim) => _$this._takwim = takwim;

  TarikhTakwimBuilder();

  TarikhTakwimBuilder get _$this {
    if (_$v != null) {
      _dateRequest = _$v.dateRequest;
      _dateType = _$v.dateType;
      _serverTime = _$v.serverTime;
      _status = _$v.status;
      _takwim = _$v.takwim?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TarikhTakwim other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TarikhTakwim;
  }

  @override
  void update(void Function(TarikhTakwimBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TarikhTakwim build() {
    _$TarikhTakwim _$result;
    try {
      _$result = _$v ??
          new _$TarikhTakwim._(
              dateRequest: dateRequest,
              dateType: dateType,
              serverTime: serverTime,
              status: status,
              takwim: takwim.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'takwim';
        takwim.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TarikhTakwim', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TakwimSolat extends TakwimSolat {
  @override
  final String bearing;
  @override
  final String lang;
  @override
  final String periodType;
  @override
  final String serverTime;
  @override
  final String status;
  @override
  final String zone;
  @override
  final BuiltList<PrayerTime> prayerTime;

  factory _$TakwimSolat([void Function(TakwimSolatBuilder) updates]) =>
      (new TakwimSolatBuilder()..update(updates)).build();

  _$TakwimSolat._(
      {this.bearing,
      this.lang,
      this.periodType,
      this.serverTime,
      this.status,
      this.zone,
      this.prayerTime})
      : super._() {
    if (bearing == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'bearing');
    }
    if (lang == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'lang');
    }
    if (periodType == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'periodType');
    }
    if (serverTime == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'serverTime');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'status');
    }
    if (zone == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'zone');
    }
    if (prayerTime == null) {
      throw new BuiltValueNullFieldError('TakwimSolat', 'prayerTime');
    }
  }

  @override
  TakwimSolat rebuild(void Function(TakwimSolatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TakwimSolatBuilder toBuilder() => new TakwimSolatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TakwimSolat &&
        bearing == other.bearing &&
        lang == other.lang &&
        periodType == other.periodType &&
        serverTime == other.serverTime &&
        status == other.status &&
        zone == other.zone &&
        prayerTime == other.prayerTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, bearing.hashCode), lang.hashCode),
                        periodType.hashCode),
                    serverTime.hashCode),
                status.hashCode),
            zone.hashCode),
        prayerTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TakwimSolat')
          ..add('bearing', bearing)
          ..add('lang', lang)
          ..add('periodType', periodType)
          ..add('serverTime', serverTime)
          ..add('status', status)
          ..add('zone', zone)
          ..add('prayerTime', prayerTime))
        .toString();
  }
}

class TakwimSolatBuilder implements Builder<TakwimSolat, TakwimSolatBuilder> {
  _$TakwimSolat _$v;

  String _bearing;
  String get bearing => _$this._bearing;
  set bearing(String bearing) => _$this._bearing = bearing;

  String _lang;
  String get lang => _$this._lang;
  set lang(String lang) => _$this._lang = lang;

  String _periodType;
  String get periodType => _$this._periodType;
  set periodType(String periodType) => _$this._periodType = periodType;

  String _serverTime;
  String get serverTime => _$this._serverTime;
  set serverTime(String serverTime) => _$this._serverTime = serverTime;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _zone;
  String get zone => _$this._zone;
  set zone(String zone) => _$this._zone = zone;

  ListBuilder<PrayerTime> _prayerTime;
  ListBuilder<PrayerTime> get prayerTime =>
      _$this._prayerTime ??= new ListBuilder<PrayerTime>();
  set prayerTime(ListBuilder<PrayerTime> prayerTime) =>
      _$this._prayerTime = prayerTime;

  TakwimSolatBuilder();

  TakwimSolatBuilder get _$this {
    if (_$v != null) {
      _bearing = _$v.bearing;
      _lang = _$v.lang;
      _periodType = _$v.periodType;
      _serverTime = _$v.serverTime;
      _status = _$v.status;
      _zone = _$v.zone;
      _prayerTime = _$v.prayerTime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TakwimSolat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TakwimSolat;
  }

  @override
  void update(void Function(TakwimSolatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TakwimSolat build() {
    _$TakwimSolat _$result;
    try {
      _$result = _$v ??
          new _$TakwimSolat._(
              bearing: bearing,
              lang: lang,
              periodType: periodType,
              serverTime: serverTime,
              status: status,
              zone: zone,
              prayerTime: prayerTime.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'prayerTime';
        prayerTime.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TakwimSolat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PrayerTime extends PrayerTime {
  @override
  final String asr;
  @override
  final String date;
  @override
  final String day;
  @override
  final String dhuhr;
  @override
  final String fajr;
  @override
  final String hijri;
  @override
  final String imsak;
  @override
  final String isha;
  @override
  final String maghrib;
  @override
  final String syuruk;

  factory _$PrayerTime([void Function(PrayerTimeBuilder) updates]) =>
      (new PrayerTimeBuilder()..update(updates)).build();

  _$PrayerTime._(
      {this.asr,
      this.date,
      this.day,
      this.dhuhr,
      this.fajr,
      this.hijri,
      this.imsak,
      this.isha,
      this.maghrib,
      this.syuruk})
      : super._() {
    if (asr == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'asr');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'date');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'day');
    }
    if (dhuhr == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'dhuhr');
    }
    if (fajr == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'fajr');
    }
    if (hijri == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'hijri');
    }
    if (imsak == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'imsak');
    }
    if (isha == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'isha');
    }
    if (maghrib == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'maghrib');
    }
    if (syuruk == null) {
      throw new BuiltValueNullFieldError('PrayerTime', 'syuruk');
    }
  }

  @override
  PrayerTime rebuild(void Function(PrayerTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrayerTimeBuilder toBuilder() => new PrayerTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrayerTime &&
        asr == other.asr &&
        date == other.date &&
        day == other.day &&
        dhuhr == other.dhuhr &&
        fajr == other.fajr &&
        hijri == other.hijri &&
        imsak == other.imsak &&
        isha == other.isha &&
        maghrib == other.maghrib &&
        syuruk == other.syuruk;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, asr.hashCode), date.hashCode),
                                    day.hashCode),
                                dhuhr.hashCode),
                            fajr.hashCode),
                        hijri.hashCode),
                    imsak.hashCode),
                isha.hashCode),
            maghrib.hashCode),
        syuruk.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrayerTime')
          ..add('asr', asr)
          ..add('date', date)
          ..add('day', day)
          ..add('dhuhr', dhuhr)
          ..add('fajr', fajr)
          ..add('hijri', hijri)
          ..add('imsak', imsak)
          ..add('isha', isha)
          ..add('maghrib', maghrib)
          ..add('syuruk', syuruk))
        .toString();
  }
}

class PrayerTimeBuilder implements Builder<PrayerTime, PrayerTimeBuilder> {
  _$PrayerTime _$v;

  String _asr;
  String get asr => _$this._asr;
  set asr(String asr) => _$this._asr = asr;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  String _dhuhr;
  String get dhuhr => _$this._dhuhr;
  set dhuhr(String dhuhr) => _$this._dhuhr = dhuhr;

  String _fajr;
  String get fajr => _$this._fajr;
  set fajr(String fajr) => _$this._fajr = fajr;

  String _hijri;
  String get hijri => _$this._hijri;
  set hijri(String hijri) => _$this._hijri = hijri;

  String _imsak;
  String get imsak => _$this._imsak;
  set imsak(String imsak) => _$this._imsak = imsak;

  String _isha;
  String get isha => _$this._isha;
  set isha(String isha) => _$this._isha = isha;

  String _maghrib;
  String get maghrib => _$this._maghrib;
  set maghrib(String maghrib) => _$this._maghrib = maghrib;

  String _syuruk;
  String get syuruk => _$this._syuruk;
  set syuruk(String syuruk) => _$this._syuruk = syuruk;

  PrayerTimeBuilder();

  PrayerTimeBuilder get _$this {
    if (_$v != null) {
      _asr = _$v.asr;
      _date = _$v.date;
      _day = _$v.day;
      _dhuhr = _$v.dhuhr;
      _fajr = _$v.fajr;
      _hijri = _$v.hijri;
      _imsak = _$v.imsak;
      _isha = _$v.isha;
      _maghrib = _$v.maghrib;
      _syuruk = _$v.syuruk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrayerTime other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrayerTime;
  }

  @override
  void update(void Function(PrayerTimeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrayerTime build() {
    final _$result = _$v ??
        new _$PrayerTime._(
            asr: asr,
            date: date,
            day: day,
            dhuhr: dhuhr,
            fajr: fajr,
            hijri: hijri,
            imsak: imsak,
            isha: isha,
            maghrib: maghrib,
            syuruk: syuruk);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
