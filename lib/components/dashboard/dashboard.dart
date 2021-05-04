import 'package:flutter/material.dart';
import 'package:school_management/components/dashboard/contentCard.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:school_management/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width > 850 ? 200 : 1,
        child: Container(
          // color: HexColor(ColorsDesign['fourth']),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width > 850
              ? MediaQuery.of(context).size.width * 0.83
              : MediaQuery.of(context).size.width,
          child: GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 550 ? 4 : 2,
            children: List.generate(dummy.length, (index) {
              return Center(
                  child: ContentCard(
                icon: dummy[index]['icon'],
                name: dummy[index]['name'],
                route: dummy[index]['route'],
              ));
            }),
          ),
        ));
  }
}

const dummy = [
  {'name': "Staff", 'id': 0, 'route': "/staff", 'icon': FontAwesomeIcons.users},
  {
    'name': "Bus Fees",
    'id': 1,
    'route': "/busfees",
    'icon': FontAwesomeIcons.bus
  },
  {
    'name': "Tution Fees",
    'id': 2,
    'route': "/tutionfees",
    'icon': FontAwesomeIcons.bookReader
  },
  {
    'name': "Staff Attendance",
    'id': 3,
    'route': "/staffattendance",
    'icon': FontAwesomeIcons.windowRestore
  },
  {
    'name': "Student Attendance",
    'id': 4,
    'route': "/studentattendance",
    'icon': FontAwesomeIcons.clipboardList
  },
];
