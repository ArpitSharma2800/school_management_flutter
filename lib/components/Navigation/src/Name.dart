import 'package:flutter/material.dart';
import 'package:school_management/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Name extends StatelessWidget {
  const Name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.user),
                      iconSize: 20,
                      color: HexColor(ColorsDesign['fifth']),
                      onPressed: () {
                        print("Pressed");
                      }),
                  SizedBox(height: 10),
                  Text(
                    "Hello, XXYYZZ",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor(ColorsDesign['fifth'])),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Designation",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor(ColorsDesign['fifth'])),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "example@eg.com",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor(ColorsDesign['fifth'])),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
