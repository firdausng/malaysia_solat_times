import 'package:flutter/material.dart';
import 'package:malaysia_solat_times/shared/constant.dart';

class MosqueFinderListSubscreen extends StatefulWidget {
  @override
  _MosqueFinderListSubscreenState createState() =>
      _MosqueFinderListSubscreenState();
}

class _MosqueFinderListSubscreenState extends State<MosqueFinderListSubscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.gps_fixed,
              color: Colors.white70,
            ),
          ),
          leading: Image.asset(
            'assets/img/mosque.png',
          ),
          title: Text(
            'Mosque $index',
            style: kSolatTimeRemainStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "substitle",
            style: kSolatTimeRemainStyle,
          ),
        );
      },
    );
  }
}
