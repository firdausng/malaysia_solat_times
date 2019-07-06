import 'package:flutter/material.dart';
import 'package:malaysia_solat_times/shared/constant.dart';

import 'base_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      screen: Container(
        child: Center(
          child: Text("Setting"),
        ),
      ),
    );
  }
}
