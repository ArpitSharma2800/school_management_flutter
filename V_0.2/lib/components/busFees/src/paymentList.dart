import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/theme/colors.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({
    Key key,
    @required this.payment,
  }) : super(key: key);

  final String payment;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: payment == "Paid"
              ? FaIcon(
                  FontAwesomeIcons.checkCircle,
                  color: HexColor(ColorsDesign['green']),
                  size: 45,
                )
              : FaIcon(
                  FontAwesomeIcons.timesCircle,
                  color: HexColor(ColorsDesign['red']),
                  size: 45,
                ),
          title: Row(children: <Widget>[
            Expanded(
                child: Text(
              "May",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ht(context) * 2.5)),
            )),
            Expanded(
                child: Text(
              "₹500",
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                  textStyle: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: ht(context) * 2.5)),
            )),
            Expanded(
                child: Text(
              "Etc",
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
                        ? EdgeInsets.symmetric(horizontal: 0)
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
                    color: payment == "Paid"
                        ? HexColor(ColorsDesign['blue']).withOpacity(0.3)
                        : HexColor(ColorsDesign['blue']),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "Pay",
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
