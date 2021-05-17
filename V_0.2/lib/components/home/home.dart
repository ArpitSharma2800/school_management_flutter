import 'package:flutter/material.dart';
import 'package:school_management/components/home/src/drawer.dart';
import 'package:school_management/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../Responsive/layout.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
            color: HexColor(ColorsDesign['lgreen']),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: ht(context) * 10,
                ),
                DrawerTile(
                  icon: FontAwesomeIcons.users,
                  name: "Staff Attendance",
                ),
                DrawerTile(
                  icon: FontAwesomeIcons.bus,
                  name: "Bus Fees",
                ),
                DrawerTile(
                  icon: FontAwesomeIcons.userGraduate,
                  name: "Pupil Attendance",
                ),
                DrawerTile(
                  icon: FontAwesomeIcons.poll,
                  name: "Results",
                ),
              ],
            ),
          ),
        ),
      ),
      body: Text("efef"),
    );
  }
}
