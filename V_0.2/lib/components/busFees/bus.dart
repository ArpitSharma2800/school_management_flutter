import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/components/busFees/src/paymentList.dart';
import 'package:school_management/components/busFees/src/pupilDetails.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class Bus extends StatefulWidget {
  Bus({Key key}) : super(key: key);

  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  final _formKey = GlobalKey<FormState>();
  final myControllerEmail = TextEditingController();
  String payment = "Paid";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: SchoolAppBar(context, "Bus Fees"),
        drawer: SchoolDrawer(),
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
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width >= 1100
                          ? wt(context) * 22
                          : MediaQuery.of(context).size.width < 650
                              ? wt(context) * 96
                              : wt(context) * 35,
                      child: TextFormField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                        style: TextStyle(color: Colors.black),
                        controller: myControllerEmail,
                        obscureText: false,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(
                                FontAwesomeIcons.idBadge,
                                color: Colors.black,
                              ),
                            ),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Search with pupil ID',
                            labelStyle: TextStyle(color: Colors.black)),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
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
                          "Search",
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
                      height: ht(context) * 2,
                    ),
                  ],
                ),
              ),
              Container(child: PupilDetails()),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.calendarCheck,
                    color: HexColor(ColorsDesign['yellow']),
                    size: 45,
                  ),
                  title: Row(children: <Widget>[
                    Expanded(
                      child: Text(
                        "Month",
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
                      "Fees",
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
                        child: Text(
                      "Payment",
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
                      return PaymentList(payment: payment);
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
