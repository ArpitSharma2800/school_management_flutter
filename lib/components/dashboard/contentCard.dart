import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class ContentCard extends StatefulWidget {
  final IconData icon;
  final String name;
  final String route;
  ContentCard({
    this.icon,
    this.route,
    this.name,
  });

  @override
  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: Center(
          child: Container(
            height: 230,
            width: 230,
            child: Card(
              color: HexColor(ColorsDesign['fourth']).withOpacity(0.1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor: hovered
                          ? HexColor(ColorsDesign['third'])
                          : HexColor(ColorsDesign['primary']),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 275),
                        child: CircleAvatar(
                            child: FaIcon(
                              widget.icon,
                              color: hovered == false
                                  ? HexColor(ColorsDesign['primary'])
                                  : HexColor(ColorsDesign['third']),
                            ), // Icon widget changed with FaIcon
                            radius: hovered ? 30.0 : 30.0,
                            backgroundColor: hovered == false
                                ? HexColor(ColorsDesign['third'])
                                : HexColor(ColorsDesign['primary'])),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: Duration(milliseconds: 275),
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: HexColor(ColorsDesign['third'])),
                      )),
                  GestureDetector(
                    onTap: () {
                      print("fe");
                      Navigator.pushReplacementNamed(context, widget.route);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 275),
                      height: hovered ? 40 : 40,
                      width: hovered ? 150.0 : 145.0,
                      child: Center(
                        child: FaIcon(
                          hovered
                              ? FontAwesomeIcons.arrowRight
                              : FontAwesomeIcons.arrowCircleRight,
                          color: hovered
                              ? HexColor(ColorsDesign['fifth'])
                              : HexColor(ColorsDesign['third']),
                          size: 28.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: hovered
                              ? HexColor(ColorsDesign['third'])
                              : HexColor(ColorsDesign['fifth']),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20.0,
                              spreadRadius: 5.0,
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
