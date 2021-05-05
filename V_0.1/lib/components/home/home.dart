import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/components/Navigation/NavigationBar.dart';
import 'package:school_management/components/dashboard/dashboard.dart';
// import 'package:school_management/components/home/src/schoolCard.dart';
import 'package:school_management/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
      backgroundColor: HexColor(ColorsDesign['fourth']).withOpacity(0.1),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "School Name",
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: HexColor(ColorsDesign['third'])),
        ),
        backgroundColor: HexColor(ColorsDesign['primary']),
        iconTheme:
            IconThemeData(color: HexColor(ColorsDesign['third']), size: 40),
      ),
      drawer: MediaQuery.of(context).size.width < 850
          ? Drawer(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor(ColorsDesign['third']),
                ),
                height: MediaQuery.of(context).size.height,
                child: DrawerHeader(
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
                      SizedBox(height: 2),
                      Text(
                        "Hello, XXYYZZ",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: HexColor(ColorsDesign['fifth'])),
                      ),
                      Divider(
                        color: HexColor(ColorsDesign['fifth']),
                      ),
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
                      SizedBox(height: 30),
                      ListTile(
                        leading: Icon(Feather.home,
                            color: HexColor(ColorsDesign['secondary'])),
                        title: Text('Home',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(ColorsDesign['secondary']))),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Feather.list,
                            color: HexColor(ColorsDesign['secondary'])),
                        title: Text('List',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(ColorsDesign['secondary']))),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Feather.folder,
                            color: HexColor(ColorsDesign['secondary'])),
                        title: Text('Folder',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(ColorsDesign['secondary']))),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Feather.message_square,
                            color: HexColor(ColorsDesign['secondary'])),
                        title: Text('Message',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(ColorsDesign['secondary']))),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(Feather.log_out,
                            color: HexColor(ColorsDesign['secondary'])),
                        title: Text('Logout',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: HexColor(ColorsDesign['secondary']))),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
      body: Container(
          // color: HexColor(ColorsDesign['primary']),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: MediaQuery.of(context).size.width > 850
              ? Stack(
                  children: [
                    //sidebar
                    NavigationBar(),
                    //dashboard
                    Dashboard()
                  ],
                )
              : Stack(
                  children: [
                    //sidebar
                    // NavigationBar(),
                    //dashboard
                    Dashboard()
                  ],
                )),
    );
  }
}
