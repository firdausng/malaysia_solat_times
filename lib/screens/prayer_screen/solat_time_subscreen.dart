import 'package:flutter/material.dart';
import 'package:malaysia_solat_times/shared/constant.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../main.dart';

class SolatTimeSubScreen extends StatefulWidget {
  @override
  _SolatTimeSubScreenState createState() => _SolatTimeSubScreenState();
}

class _SolatTimeSubScreenState extends State<SolatTimeSubScreen> {
  @override
  Widget build(BuildContext context) {
    //print(Provider.of<AppProvider>(context).tarikhTakwim);
    //print(Provider.of<AppProvider>(context).takwimSolat);
//    var datetimeNow = DateTime.now();
//    var dateNow = datetimeNow.toIso8601String().split("T")[0];
//    print(Provider.of<AppProvider>(context).takwimSolat);
    var takwinDateTime =
        Provider.of<AppProvider>(context).takwimSolat.serverTime;
    var takwinDate = takwinDateTime.split(" ")[0];
    var takwinTime = takwinDateTime.split(" ")[1];
    return Container(
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          SolatTimeBox(
            type: 'Imsak',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].imsak}"))}',
          ),
          SolatTimeBox(
            type: 'Subuh',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].fajr}"))}',
          ),
          SolatTimeBox(
            type: 'Syuruk',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].syuruk}"))}',
          ),
//                SolatTimeBox(
//                  type: 'Dhuha',
//                  time:
//                      '${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].syuruk} am',
//                ),
          SolatTimeBox(
            type: 'Zohor',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].dhuhr}"))}',
          ),
          SolatTimeBox(
            type: 'Asar',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].asr}"))}',
          ),
          SolatTimeBox(
            type: 'Maghrib',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].maghrib}"))}',
          ),
          SolatTimeBox(
            type: 'Isyak',
            time:
                '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("$takwinDate ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].isha}"))}',
          ),
        ],
      ),
    );
  }
}

//'${new DateFormat("h:mm:ss a").format(DateTime.tryParse("2019-07-03 ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].imsak}"))}'
class SolatTimeBox extends StatelessWidget {
  final String type;
  final String time;

  const SolatTimeBox({Key key, this.type, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var solatTime =
        '${new DateFormat("h:mm:ss a").format(DateTime.tryParse("2019-07-03 ${Provider.of<AppProvider>(context).takwimSolat.prayerTime[0].imsak}"))}';
    return AnimatedContainer(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      duration: Duration(seconds: 1),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.white30, width: 2)),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            type,
            style: kSolatTimeRemainStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            time,
            style: kSolatTimeRemainStyle.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
