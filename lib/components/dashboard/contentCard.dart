import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class ContentCard extends StatefulWidget {
  ContentCard({Key key}) : super(key: key);

  @override
  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 230,
          width: 230,
          child: Card(
            color: HexColor(ColorsDesign['fifth']),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                      ), // Icon widget changed with FaIcon
                      radius: 40.0,
                      backgroundColor: Colors.cyan),
                ),
              ],
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
