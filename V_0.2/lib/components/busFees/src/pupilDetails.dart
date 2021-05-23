import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/Responsive/layout.dart';

class PupilDetails extends StatelessWidget {
  const PupilDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name : Arpit Sharma",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: ht(context) * 3)),
          ),
          Text(
            "Pupil ID : 123456",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: ht(context) * 3)),
          ),
          Text(
            "Class : 10 C",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: ht(context) * 3)),
          ),
        ],
      ),
    );
  }
}
