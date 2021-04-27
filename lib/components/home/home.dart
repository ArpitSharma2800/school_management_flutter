import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class Home extends StatefulWidget {
  final String page;
  final String extra;
  const Home({Key key, this.page, this.extra}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(ColorsDesign['primary']),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor(ColorsDesign['primary']),
        iconTheme:
            IconThemeData(color: HexColor(ColorsDesign['third']), size: 40),
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "School Management",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: HexColor(ColorsDesign['fifth'])),
              ),
              decoration: BoxDecoration(
                color: HexColor(ColorsDesign['third']),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout,
                  color: HexColor(ColorsDesign['secondary'])),
              title: Text('Logout',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
