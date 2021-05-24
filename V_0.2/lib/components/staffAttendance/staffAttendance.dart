import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';
import 'package:school_management/theme/colors.dart';

class StaffAttendance extends StatefulWidget {
  StaffAttendance({Key key}) : super(key: key);

  @override
  _StaffAttendanceState createState() => _StaffAttendanceState();
}

class _StaffAttendanceState extends State<StaffAttendance> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            labelColor: HexColor(ColorsDesign['blue']),
            unselectedLabelColor: Colors.black,
            indicatorColor: HexColor(ColorsDesign['blue']),
            labelStyle: TextStyle(
                fontSize: 22.0, fontFamily: 'quicksand'), //For Selected tab
            unselectedLabelStyle:
                TextStyle(fontSize: 22.0, fontFamily: 'quicksand'),
            indicator:
                UnderlineTabIndicator(borderSide: BorderSide(width: 4.0)),
            tabs: [
              Tab(
                text: "Mark Attendance",
              ),
              Tab(
                text: "Check Attendance",
              ),
            ],
          ),
          title: Responsive(
            desktop: Text(
              "Staff Attendance",
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: wt(context) * 2)),
            ),
            mobile: Text(
              "Staff Attendance",
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: wt(context) * 5)),
            ),
            tablet: Text(
              "Staff Attendance",
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: wt(context) * 4)),
            ),
          ),
        ),
        drawer: SchoolDrawer(),
      ),
    );
  }
}
