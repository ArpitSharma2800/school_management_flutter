import 'package:flutter/material.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';

class StaffAttendance extends StatefulWidget {
  StaffAttendance({Key key}) : super(key: key);

  @override
  _StaffAttendanceState createState() => _StaffAttendanceState();
}

class _StaffAttendanceState extends State<StaffAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SchoolAppBar(context, "Staff Attendance"),
      drawer: SchoolDrawer(),
    );
  }
}
