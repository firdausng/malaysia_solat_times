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

  AppProvider() {
    //getSirimTime();
    getCurrentCity().then((String current) => {setCurrentCity(current)});
    getEsolatInfo().then((void a) => notifyListeners());
  }

  void setCurrentCity(String city) {
    _currentCity = city;
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

  Future<void> getEsolatInfo() async {
    var esolatService = EsolatService();
//    _sirimTimerimTime = await esolatService.getSirimTime();
//    _tarikhTakwim = await esolatService.getTarikhTakwim();
    _takwimSolat = await esolatService.getTakwimSolat();
    //print(_sirimTimerimTime);
    //notifyListeners();
  }
}
