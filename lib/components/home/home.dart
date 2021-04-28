import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/components/Navigation/NavigationBar.dart';
import 'package:school_management/components/home/src/schoolCard.dart';
import 'package:school_management/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const dummy = [
  {'name': "School Bus Fees", 'id': 0},
  {'name': "School Bus Fees", 'id': 1},
  {'name': "School Bus Fees", 'id': 2},
  {'name': "School Bus Fees", 'id': 3},
  {'name': "School Bus Fees", 'id': 4},
  {'name': "School Bus Fees", 'id': 5},
];

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
      // drawer: Drawer(
      //   elevation: 0,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       Container(
      //         height: MediaQuery.of(context).size.height * 0.3,
      //         child: DrawerHeader(
      //           child: Padding(
      //             padding: const EdgeInsets.all(0.0),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 IconButton(
      //                     icon: FaIcon(FontAwesomeIcons.user),
      //                     iconSize: 20,
      //                     color: HexColor(ColorsDesign['fifth']),
      //                     onPressed: () {
      //                       print("Pressed");
      //                     }),
      //                 Text(
      //                   "Hello, XXYYZZ",
      //                   style: TextStyle(
      //                       fontSize: 18.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: HexColor(ColorsDesign['fifth'])),
      //                 ),
      //                 Divider(
      //                   color: HexColor(ColorsDesign['fifth']),
      //                 ),
      //                 Text(
      //                   "Designation",
      //                   style: TextStyle(
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: HexColor(ColorsDesign['fifth'])),
      //                 ),
      //                 Text(
      //                   "example@eg.com",
      //                   style: TextStyle(
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: HexColor(ColorsDesign['fifth'])),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           decoration: BoxDecoration(
      //             color: HexColor(ColorsDesign['third']),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.logout,
      //             color: HexColor(ColorsDesign['secondary'])),
      //         title: Text('Logout',
      //             style: TextStyle(
      //               fontSize: 16.0,
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.pushNamed(context, '/');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            //sidebar
            MediaQuery.of(context).size.width != null ? NavigationBar() : null,
            //dashboard
          ],
        ),
      ),
      //body:  ListView.builder(
      //   itemCount: dummy.length,
      //   itemBuilder: (context, index) {
      //     return SharedFilesItem(
      //       sharedFileName: dummy[index]['name'],
      //     );
      //   },
      // ),
    );
  }
}
