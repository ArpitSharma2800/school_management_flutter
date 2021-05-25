import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/components/staffAttendance/src/markAttendanceList.dart';
import 'package:school_management/theme/colors.dart';

class MarkAttendance extends StatefulWidget {
  MarkAttendance({Key key}) : super(key: key);

  @override
  _MarkAttendanceState createState() => _MarkAttendanceState();
}

class _MarkAttendanceState extends State<MarkAttendance> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(
            left: wt(context) * 2,
            right: wt(context) * 2,
            top: wt(context) * 2),
        height: ht(context) * 100,
        width: wt(context) * 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: ht(context) * 3)),
                ),
                SizedBox(
                  width: wt(context) * 2,
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.calendar,
                    color: HexColor(ColorsDesign['yellow']),
                  ),
                  onPressed: () => _selectDate(context),
                )
              ],
            ),
            SizedBox(
              height: ht(context) * 2,
            ),
            Container(
              width: MediaQuery.of(context).size.width >= 1100
                  ? wt(context) * 10
                  : MediaQuery.of(context).size.width < 650
                      ? wt(context) * 32
                      : wt(context) * 18,
              height: MediaQuery.of(context).size.width >= 1100
                  ? ht(context) * 5
                  : MediaQuery.of(context).size.width < 650
                      ? ht(context) * 5
                      : ht(context) * 4,
              decoration: BoxDecoration(
                  color: HexColor(ColorsDesign['yellow']),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                    ),
                  ]),
              child: Center(
                child: Text(
                  "Submit",
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    // fontSize: wt(context) * 1
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              child: ListTile(
                // leading: FaIcon(
                //   FontAwesomeIcons.calendarCheck,
                //   color: HexColor(ColorsDesign['yellow']),
                //   size: 45,
                // ),
                title: Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      "Teacher's Id",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ht(context) * 2.5)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Teacher's Name",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: ht(context) * 2.5)),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "Date",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: ht(context) * 2.5)),
                  )),
                  Expanded(
                      child: Text(
                    "Mark",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: ht(context) * 2.5)),
                  )),
                  Expanded(
                      child: Text(
                    "Undo",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: ht(context) * 2.5)),
                  )),
                ]),
                isThreeLine: false,
              ),
            ),
            Expanded(
              child: Container(
                width: wt(context) * 100,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MarkList(
                      touchedMark: () {},
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
