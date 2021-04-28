import 'package:flutter/material.dart';
import 'package:school_management/components/Navigation/src/Name.dart';
import 'package:school_management/components/Navigation/src/NavBar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 200,
          color: HexColor(ColorsDesign['third']),
          child: Stack(
            children: [
              Name(),
              Align(alignment: Alignment.center, child: NavBar())
            ],
          ),
        ),
      ),
    );
  }
}
