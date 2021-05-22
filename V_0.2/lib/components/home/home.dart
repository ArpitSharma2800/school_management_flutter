import 'package:flutter/material.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: SchoolAppBar(context, "schoolName"),
        drawer: SchoolDrawer(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.school,
              color: Colors.black,
              size: ht(context) * 8,
            ),
            Responsive(
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
          ],
        )));
  }
}
