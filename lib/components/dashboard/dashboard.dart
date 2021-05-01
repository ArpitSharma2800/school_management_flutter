import 'package:flutter/material.dart';
import 'package:school_management/components/dashboard/contentCard.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:school_management/theme/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width > 850 ? 200 : 10,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width > 850
              ? MediaQuery.of(context).size.width * 0.83
              : MediaQuery.of(context).size.width,
          child: GridView.count(
            crossAxisCount: MediaQuery.of(context).size.width > 550 ? 4 : 2,
            children: List.generate(100, (index) {
              return Center(child: ContentCard());
            }),
          ),
        ));
  }
}
