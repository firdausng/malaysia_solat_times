import 'package:flutter/material.dart';
import 'package:malaysia_solat_times/screens/setting_screen.dart';
import 'package:path/path.dart';
import 'package:malaysia_solat_times/shared/constant.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class BaseScreen extends StatefulWidget {
  final Widget screen;

  const BaseScreen({Key key, this.screen}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    //var routeName = ModalRoute.of(context).settings.name;
    return Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green.shade200,
              Colors.green.shade600,
            ],
          ),
        ),
      ),
      SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Malaysia Solat"),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                if (ModalRoute.of(context).settings.isInitialRoute) {
                  //Navigator.pushNamed(context, "setting_screen");
                  Navigator.push(context, FadeRoute(page: SettingScreen()));
                } else {
                  Navigator.pop(context);
                }
              },
              child: Icon(
                Icons.menu,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: (!ModalRoute.of(context).settings.isInitialRoute)
              ? null
              : BottomNavigationBar(
                  backgroundColor: Colors.white,
                  elevation: 1,
                  currentIndex: Provider.of<AppProvider>(context)
                      .bottomNavigationBarIndex,
                  iconSize: 30,
                  selectedItemColor: Colors.green,
                  selectedFontSize: 15,
                  onTap: (index) {
                    Provider.of<AppProvider>(context)
                        .setBottomNavigationBarIndex(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.change_history,
                      ),
                      title: Text(
                        'Compas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.av_timer,
                      ),
                      title: Text(
                        'Solat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.directions,
                      ),
                      title: Text(
                        'Mosque',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
          body: widget.screen,
        ),
      ),
    ]);
  }
}

// reference : https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
class SizeRoute extends PageRouteBuilder {
  final Widget page;
  SizeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Align(
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              ),
        );
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
        );
}

class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              ScaleTransition(
                scale: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: child,
              ),
        );
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
                opacity: animation,
                child: child,
              ),
        );
}
