import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:school_management/components/busFees/bus.dart';
import 'package:school_management/components/staffAttendance/src/markAttendance.dart';
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
            labelColor: HexColor(ColorsDesign['green']),
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
                fontSize: ht(context) * 2,
                fontFamily: 'quicksand'), //For Selected tab
            unselectedLabelStyle:
                TextStyle(fontSize: ht(context) * 2, fontFamily: 'quicksand'),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: HexColor(ColorsDesign['green']), width: 5.0)),
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
        body: TabBarView(
          children: [
            MarkAttendance(),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
