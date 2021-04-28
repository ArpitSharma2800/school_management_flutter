import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class SharedFilesItem extends StatefulWidget {
  final String sharedFileName;

  SharedFilesItem({
    this.sharedFileName,
  });

  @override
  _SharedFilesItemState createState() => _SharedFilesItemState();
}

class _SharedFilesItemState extends State<SharedFilesItem> {
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
      child: Container(
        height: hovered ? 70 : 70,
        // width: hovered ? 200.0 : 195.0,
        width: hovered
            ? MediaQuery.of(context).size.width * 0.302
            : MediaQuery.of(context).size.width * 0.3,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 275),
          margin: EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: hovered
                  ? HexColor(ColorsDesign['third'])
                  : HexColor(ColorsDesign['fifth']),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: hovered
                  ? [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 13.0,
                        spreadRadius: 0.0,
                      ),
                    ]
                  : []),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 28.0,
                        width: 28.0,
                        decoration: BoxDecoration(
                          color:
                              HexColor(ColorsDesign['third']).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.folder,
                            color: HexColor(ColorsDesign['secondary']),
                            size: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(widget.sharedFileName,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: hovered
                                  ? HexColor(ColorsDesign['fifth'])
                                  : HexColor(ColorsDesign['third']))),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
