import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_management/components/home/src/drawer.dart';
import 'package:school_management/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm \nEEE d MMM').format(now);
    String currentRoute = ModalRoute.of(context).settings.name;

    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Responsive(
          desktop: Text(
            "SchoolName",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: wt(context) * 2)),
          ),
          mobile: Text(
            "SchoolName",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: wt(context) * 5)),
          ),
          tablet: Text(
            "SchoolName",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: wt(context) * 4)),
          ),
        ),
      ),
      drawer: Container(
        color: HexColor(ColorsDesign['yellow']),
        child: Drawer(
          elevation: 0,

          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
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
                // SizedBox(
                //   height: ht(context) * 10,
                // ),
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
                  route: false,
                  touched: () {
                    Timer(Duration(milliseconds: 100), () {
                      Navigator.pushReplacementNamed(context, '/main');
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
        ),
      ),
      body: ConditionalSwitch.single<String>(
          context: context,
          valueBuilder: (BuildContext context) => currentRoute,
          caseBuilders: {
            '/main': (BuildContext context) => Text('The value is A!'),
            '/fes': (BuildContext context) => Text('The value is B!'),
          },
          fallbackBuilder: (BuildContext context) => CenterText()),
    );
  }
}

class CenterText extends StatelessWidget {
  const CenterText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive(
      desktop: Text(
        "SchoolName",
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 2)),
      ),
      mobile: Text(
        "SchoolName",
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 5)),
      ),
      tablet: Text(
        "SchoolName",
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 4)),
      ),
    ));
  }
}
