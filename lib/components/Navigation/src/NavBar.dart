import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:school_management/components/Navigation/src/NavBarItem.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];
  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: Feather.home,
            active: selected[0],
            name: 'home',
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          SizedBox(height: 10),
          NavBarItem(
            icon: Feather.list,
            active: selected[1],
            name: 'list',
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          SizedBox(height: 10),
          NavBarItem(
            icon: Feather.folder,
            active: selected[2],
            name: 'folder',
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          SizedBox(height: 10),
          NavBarItem(
            icon: Feather.message_square,
            active: selected[3],
            name: 'message',
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          SizedBox(height: 10),
          NavBarItem(
            icon: Feather.log_out,
            active: selected[4],
            name: 'Logout',
            touched: () {
              Navigator.pushNamed(context, '/');
              // setState(() {
              //   select(4);
              // });
            },
          ),
        ],
      ),
    );
  }
}
