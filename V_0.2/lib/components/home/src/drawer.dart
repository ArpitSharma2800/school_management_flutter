import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/Responsive/responsive.dart';
import 'package:school_management/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTile extends StatefulWidget {
  final String name;
  final IconData icon;
  DrawerTile({
    @required this.name,
    @required this.icon,
  });

  @override
  _DrawerTileState createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        padding:
            EdgeInsets.fromLTRB(wt(context) * 0.5, 0, wt(context) * 0.5, 0),
        height: ht(context) * 10,
        child: Card(
          elevation: 0,
          color: hovered
              ? HexColor(ColorsDesign['green']).withOpacity(0.8)
              : Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: FaIcon(widget.icon),
                title: Text(
                  widget.name,
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: ht(context) * 2)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
