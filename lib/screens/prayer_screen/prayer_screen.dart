import 'package:flutter/material.dart';
import 'package:malaysia_solat_times/screens/prayer_screen/solat_time_subscreen.dart';
import 'package:malaysia_solat_times/shared/constant.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../base_screen.dart';
import 'compas_subscreen.dart';
import 'mosque_finder_list_subscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrayerScreen extends StatefulWidget {
  @override
  _PrayerScreenState createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  Animation<Color> timeLeftAnimation;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screen: OrientationBuilder(
        builder: (context, orientation) {
          Animation<Color> animation;
          return Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
            child: Flex(
              direction: orientation == Orientation.portrait
                  ? Axis.vertical
                  : Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PrayerScreenTop(),
                ),
                Expanded(
                  flex: 4,
                  child: SolatPageView(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SolatPageView extends StatefulWidget {
  @override
  _SolatPageViewState createState() => _SolatPageViewState();
}

class _SolatPageViewState extends State<SolatPageView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (mounted) {
      Provider.of<AppProvider>(context).addListener(() {
        if (Provider.of<AppProvider>(context).bottomNavigationBarIndex !=
            Provider.of<AppProvider>(context).pageController.page.round()) {
          Provider.of<AppProvider>(context).pageController.animateToPage(
                Provider.of<AppProvider>(context).bottomNavigationBarIndex,
                duration: Duration(milliseconds: 700),
                curve: Curves.easeOutQuint,
              );
        }
      });
    }
  }

  @override
  void dispose() {
    Provider.of<AppProvider>(context).pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: Provider.of<AppProvider>(context).pageController,
      onPageChanged: (index) {
        Provider.of<AppProvider>(context).setBottomNavigationBarIndex(index);
      },
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            {
              return CompasSubScreen();
            }

          case 1:
            {
              if (Provider.of<AppProvider>(context).takwimSolat == null) {
                return Container(
                  child: SpinKitPulse(
                    color: Colors.white,
                    size: 50.0,
                  ),
                );
              }
              return SolatTimeSubScreen();
            }

          case 2:
            {
              if (Provider.of<AppProvider>(context).takwimSolat == null) {
                return Container(
                  child: SpinKitPulse(
                    color: Colors.white,
                    size: 50.0,
                  ),
                );
              }
              return MosqueFinderListSubscreen();
            }

          default:
            return SolatTimeSubScreen();
        }
      },
    );
  }
}

class PrayerScreenTop extends StatefulWidget {
  @override
  _PrayerScreenTopState createState() => _PrayerScreenTopState();
}

class _PrayerScreenTopState extends State<PrayerScreenTop> {
  @override
  Widget build(BuildContext context) {
    //print(Provider.of<AppProvider>(context).esolatZoneList[0]);

    //Provider.of<AppProvider>(context).takwimSolat.prayerTime.
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Text(
                '${Provider.of<AppProvider>(context).nextPrayerTimeLeft} minutes',
                style: kSolatTimeRemainStyle.copyWith(
                  fontSize: 50,
                ),
              ),
              Text(
                'left until ${Provider.of<AppProvider>(context).nextPrayerTime}',
                style: kSolatTimeRemainStyle,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(children: [
                Positioned(
                  left: 1.0,
                  top: 2.0,
                  child: Icon(Icons.location_on, color: Colors.green),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                width: 10.0,
              ),
              Text(
                Provider.of<AppProvider>(context).currentCity,
                style: kSolatTimeRemainStyle,
              ),
            ],
          ),
        ),
        Container(
          child: LinearProgressIndicator(
            backgroundColor: Colors.green.shade200,
            value: 0.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
          ),
        ),
      ],
    );
  }
}
