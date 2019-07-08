import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:malaysia_solat_times/screens/prayer_screen/prayer_screen.dart';
import 'package:malaysia_solat_times/screens/setting_screen.dart';
import 'package:malaysia_solat_times/service/esolat.dart';
import 'package:malaysia_solat_times/service/esolat_service.dart';
import 'package:malaysia_solat_times/service/fb.dart';
import 'package:malaysia_solat_times/service/fb_place_service.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => AppProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.green.shade900, //to use
          buttonTheme: ButtonThemeData(),
        ),
        initialRoute: 'prayer_screen',
        routes: {
          'prayer_screen': (context) => PrayerScreen(),
          'setting_screen': (context) => SettingScreen(),
        },
      ),
    );
  }
}

class AppProvider with ChangeNotifier {
  int _bottomNavigationBarIndex = 1;
  int get bottomNavigationBarIndex => _bottomNavigationBarIndex;
  DateTime _now = DateTime.now();

  PageController _pageController = new PageController(
    initialPage: 1,
  );
  PageController get pageController => _pageController;

  SirimTime _sirimTimerimTime;
  SirimTime get sirimTimerimTime => _sirimTimerimTime;

  TarikhTakwim _tarikhTakwim;
  TarikhTakwim get tarikhTakwim => _tarikhTakwim;

  TakwimSolat _takwimSolat;
  TakwimSolat get takwimSolat => _takwimSolat;

  String _currentCity = "";
  String get currentCity => _currentCity;

  String _currentPrayerTime = "";
  String get currentPrayerTime => _currentPrayerTime;

  String _nextPrayerTime = "";
  String get nextPrayerTime => _nextPrayerTime;

  String _nextPrayerTimeLeft = "0";
  String get nextPrayerTimeLeft => _nextPrayerTimeLeft;

  String _solatZone = "";
  String get solatZone => _solatZone;

  BuiltList<EsolatZone> _esolatZoneList;
  BuiltList<EsolatZone> get esolatZoneList => _esolatZoneList;

  AppProvider() {
    getCurrentCity()
        .then((String current) async => {await setCurrentCity(current)});
  }

  Future<void> setCurrentCity(String city) async {
    _currentCity = city;
    _esolatZoneList = EsolatService().loadEsolatZone();
    if (_currentCity != null) {
      var _solatZone = _esolatZoneList.where(
        (zone) => zone.area.contains(_currentCity),
      );
      //print(_solatZone.first.zone);
      await getEsolatInfo(_solatZone.first.zone);
      //print(_takwimSolat.prayerTime.first.imsak);
    }

    notifyListeners();
  }

  void setBottomNavigationBarIndex(int index) {
    _bottomNavigationBarIndex = index;
    notifyListeners();
  }

  Future<String> getCurrentCity() async {
    var fbService = FbService();
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    FbSearchPlaceResponse place =
        await fbService.searchPlace(position.latitude, position.longitude);
    return place.data.first.location.city;
  }

  Future<void> getEsolatInfo(solatZone) async {
    var esolatService = EsolatService();

    esolatService.getSirimTime().then((val) => {_sirimTimerimTime = val});
    esolatService.getTarikhTakwim().then((val) => {_tarikhTakwim = val});
    _takwimSolat = await esolatService.getTakwimSolat(zone: solatZone);
    setPrayerInfo();
    //new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].imsak
    notifyListeners();
  }

  int getDurationInMinutes(DateTime currentDateTime, DateTime prayerDateTime) {
    return currentDateTime.difference(prayerDateTime).inMinutes;
  }

  DateTime convertPrayerToDatetime(String currentDate, String prayerTime) {
    return DateTime.tryParse("$currentDate $prayerTime");
  }

  void setCurrentAndNextPrayerInfo(
      {String currentPrayerTime,
      String nextPrayerTime,
      String nextPrayerTimeLeft}) {
    _currentPrayerTime = currentPrayerTime;
    _nextPrayerTime = nextPrayerTime;
    _nextPrayerTimeLeft = nextPrayerTimeLeft;
  }

  void setPrayerInfo() {
    var takwinDate = _takwimSolat.serverTime.split(" ")[0];
    var currentDateTime = DateTime.now();

    if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].imsak)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "imsak",
        nextPrayerTime: "Subuh",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].fajr.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].fajr)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Subuh",
        nextPrayerTime: "Syuruk",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].syuruk.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].syuruk)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Syuruk",
        nextPrayerTime: "Zohor",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].dhuhr.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].dhuhr)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Zohor",
        nextPrayerTime: "Asar",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].asr.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].asr)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Asar",
        nextPrayerTime: "Maghrib",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].maghrib.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].maghrib)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Maghrib",
        nextPrayerTime: "Isyak",
        nextPrayerTimeLeft: _takwimSolat.prayerTime[0].isha.toString(),
      );
    } else if (getDurationInMinutes(
            currentDateTime,
            convertPrayerToDatetime(
                takwinDate, _takwimSolat.prayerTime[0].isha)) <
        0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Isyak",
        nextPrayerTime: "Imsak",
        nextPrayerTimeLeft: getDurationInMinutes(
                currentDateTime,
                convertPrayerToDatetime(
                    takwinDate, _takwimSolat.prayerTime[0].imsak))
            .toString(),
      );
    } else if (getDurationInMinutes(
                currentDateTime,
                convertPrayerToDatetime(
                    takwinDate, _takwimSolat.prayerTime[0].isha)) >
            0 &&
        getDurationInMinutes(
                currentDateTime,
                convertPrayerToDatetime(
                    takwinDate, _takwimSolat.prayerTime[0].imsak)) >
            0) {
      setCurrentAndNextPrayerInfo(
        currentPrayerTime: "Isyak",
        nextPrayerTime: "Imsak",
        nextPrayerTimeLeft: getDurationInMinutes(
                currentDateTime,
                convertPrayerToDatetime(
                    takwinDate, _takwimSolat.prayerTime[0].imsak))
            .toString(),
      );
    }
    notifyListeners();
  }
}
