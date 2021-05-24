import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/stylingComponents/drawer/src/drawerTile.dart';
import 'package:school_management/theme/colors.dart';
import 'package:intl/intl.dart';

class SchoolDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm \nEEE d MMM').format(now);
    String currentRoute = ModalRoute.of(context).settings.name;
    return Drawer(
      elevation: 0,
      child: Container(
        color: HexColor(ColorsDesign['blue']).withOpacity(0.1),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: HexColor(ColorsDesign['blue']).withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SchoolName',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: ht(context) * 3)),
                  ),
                  Text(
                    formattedDate,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: ht(context) * 2.5)),
                  ),
                ],
              ),
            ),
            DrawerTile(
              icon: FontAwesomeIcons.home,
              name: "Home",
              route: currentRoute == '/main' ? true : false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/main');
                });
              },
            ),
            DrawerTile(
              icon: FontAwesomeIcons.users,
              name: "Staff Attendance",
              route: currentRoute == '/staffattendance' ? true : false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/staffattendance');
                });
              },
            ),
            DrawerTile(
              icon: FontAwesomeIcons.bus,
              name: "Bus Fees",
              route: currentRoute == '/bus' ? true : false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/bus');
                });
              },
            ),
            DrawerTile(
              icon: FontAwesomeIcons.userGraduate,
              name: "Pupil Attendance",
              route: false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/main');
                });
              },
            ),
            DrawerTile(
              icon: FontAwesomeIcons.poll,
              name: "Results",
              route: false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/main');
                });
              },
            ),
            DrawerTile(
              icon: FontAwesomeIcons.solidArrowAltCircleLeft,
              name: "Logout",
              route: false,
              touched: () {
                Timer(Duration(milliseconds: 100), () {
                  Navigator.pushReplacementNamed(context, '/main');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
