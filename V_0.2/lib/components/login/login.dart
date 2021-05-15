import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_management/Responsive/layout.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:school_management/components/login/src/LoginFormDes.dart';
import 'package:school_management/components/login/src/LoginFormMob.dart';
import 'package:school_management/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor(ColorsDesign['green']).withOpacity(0.1),
          elevation: 0,
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
        body: Center(
            child: Responsive(
          desktop: LoginFormDesktop(),
          mobile: LoginFormMob(),
          tablet: LoginFormDesktop(),
        )));
  }
}
