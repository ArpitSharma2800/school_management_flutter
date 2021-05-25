import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/theme/colors.dart';

class MarkList extends StatelessWidget {
  const MarkList({
    Key key,
    @required this.touchedMark,
  }) : super(key: key);

  final Function touchedMark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        child: ListTile(
          // leading: payment == "Paid"
          //     ? FaIcon(
          //         FontAwesomeIcons.checkCircle,
          //         color: HexColor(ColorsDesign['green']),
          //         size: 45,
          //       )
          //     : FaIcon(
          //         FontAwesomeIcons.timesCircle,
          //         color: HexColor(ColorsDesign['red']),
          //         size: 45,
          //       ),
          title: Row(children: <Widget>[
            Expanded(
                child: Text(
              "123456",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ht(context) * 2.5)),
            )),
            Expanded(
                child: Text(
              "Arpit Sharma",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ht(context) * 2.5)),
            )),
            Expanded(
                child: Text(
              "26/06/2020",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ht(context) * 2.5)),
            )),
            Expanded(
              child: Padding(
                padding: MediaQuery.of(context).size.width >= 1100
                    ? EdgeInsets.symmetric(horizontal: 100)
                    : MediaQuery.of(context).size.width < 650
                        ? EdgeInsets.symmetric(horizontal: 5)
                        : EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width >= 1100
                      ? wt(context) * 10
                      : MediaQuery.of(context).size.width < 650
                          ? wt(context) * 20
                          : wt(context) * 20,
                  height: MediaQuery.of(context).size.width >= 1100
                      ? ht(context) * 5
                      : MediaQuery.of(context).size.width < 650
                          ? ht(context) * 5
                          : ht(context) * 4,
                  decoration: BoxDecoration(
                    color: HexColor(ColorsDesign['blue']),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        "Absent",
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          // fontSize: wt(context) * 1
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: MediaQuery.of(context).size.width >= 1100
                    ? EdgeInsets.symmetric(horizontal: 100)
                    : MediaQuery.of(context).size.width < 650
                        ? EdgeInsets.symmetric(horizontal: 5)
                        : EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width >= 1100
                      ? wt(context) * 10
                      : MediaQuery.of(context).size.width < 650
                          ? wt(context) * 20
                          : wt(context) * 20,
                  height: MediaQuery.of(context).size.width >= 1100
                      ? ht(context) * 5
                      : MediaQuery.of(context).size.width < 650
                          ? ht(context) * 5
                          : ht(context) * 4,
                  decoration: BoxDecoration(
                    color: HexColor(ColorsDesign['green']),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "undo",
                      style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // fontSize: wt(context) * 1
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          isThreeLine: false,
        ),
      ),
    );
  }
}
