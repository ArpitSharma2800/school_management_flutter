import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width > 850 ? 200 : 00,
        child: Container(
          // color: HexColor(ColorsDesign['primary']),
          // margin: const EdgeInsets.only(right: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.83,
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }),
          ),
        ));
  }
}
