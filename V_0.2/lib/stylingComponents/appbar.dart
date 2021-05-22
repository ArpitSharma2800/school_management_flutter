import 'package:flutter/material.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/Responsive/responsive.dart';

Widget SchoolAppBar(context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    title: Responsive(
      desktop: Text(
        title,
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 2)),
      ),
      mobile: Text(
        title,
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 5)),
      ),
      tablet: Text(
        title,
        style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: wt(context) * 4)),
      ),
    ),
  );
}
