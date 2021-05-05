import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final bool active;
  final String name;
  NavBarItem({
    this.icon,
    this.touched,
    this.active,
    this.name,
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // print(widget.icon);
          widget.touched();
        },
        splashColor: HexColor(ColorsDesign['fourth']).withOpacity(0.1),
        hoverColor: HexColor(ColorsDesign['fourth']).withOpacity(0.1),
        child: Container(
          child: Container(
            height: 60.0,
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  color: widget.active
                      ? HexColor(ColorsDesign['secondary'])
                      : Colors.white54,
                  size: 24.0,
                ),
                SizedBox(height: 10),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: widget.active
                          ? HexColor(ColorsDesign['secondary'])
                          : Colors.white54,
                      fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
