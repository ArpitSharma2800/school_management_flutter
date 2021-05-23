import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/components/busFees/src/pupilDetails.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';
import 'package:expansion_card/expansion_card.dart';

class Bus extends StatefulWidget {
  Bus({Key key}) : super(key: key);

  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  final _formKey = GlobalKey<FormState>();
  final myControllerEmail = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 2), () {
      _btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: SchoolAppBar(context, "Bus Fees"),
        drawer: SchoolDrawer(),
        body: Container(
          padding: EdgeInsets.only(
              left: wt(context) * 2,
              right: wt(context) * 2,
              top: wt(context) * 2),
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                //form starts
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width >= 1100
                            ? wt(context) * 22
                            : MediaQuery.of(context).size.width < 650
                                ? wt(context) * 96
                                : wt(context) * 35,
                        child: TextFormField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                          ],
                          style: TextStyle(color: Colors.black),
                          controller: myControllerEmail,
                          obscureText: false,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FaIcon(
                                  FontAwesomeIcons.idBadge,
                                  color: Colors.black,
                                ),
                              ),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Search with pupil ID',
                              labelStyle: TextStyle(color: Colors.black)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: ht(context) * 2,
                      ),
                      Container(
                        child: RoundedLoadingButton(
                          width: MediaQuery.of(context).size.width >= 1100
                              ? wt(context) * 10
                              : MediaQuery.of(context).size.width < 650
                                  ? wt(context) * 32
                                  : wt(context) * 18,
                          height: MediaQuery.of(context).size.width >= 1100
                              ? ht(context) * 5
                              : MediaQuery.of(context).size.width < 650
                                  ? ht(context) * 5
                                  : ht(context) * 4,
                          child: Text('Submit',
                              style: TextStyle(color: Colors.white)),
                          color: HexColor(ColorsDesign['yellow']),
                          successColor: HexColor(ColorsDesign['green']),
                          controller: _btnController,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _doSomething();
                            } else {
                              _btnController.reset();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //forms ends

                //databasle start here
              ),
              Positioned(top: 140, child: PupilDetails()),
              Positioned(
                  top: 270,
                  child: Container(
                    width: wt(context) * 95,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Card(
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.timesCircle,
                                  color: HexColor(ColorsDesign['red']),
                                ),
                                title: Text(
                                  "Month : May",
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: ht(context) * 2.5)),
                                ),
                                subtitle: Text('Fees to be paid ₹500'),
                                trailing: Icon(Icons.more_vert),
                                isThreeLine: true,
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.timesCircle,
                                  color: HexColor(ColorsDesign['red']),
                                ),
                                title: Text(
                                  "Month : June",
                                  style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: ht(context) * 2.5)),
                                ),
                                subtitle: Text('Fees to be paid ₹500'),
                                trailing: Icon(Icons.more_vert),
                                isThreeLine: true,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  )),
            ],
          ),
        ));
  }
}

const data = [
  {"name": "Ram", "email": "ram@gmail.com", "age": 23, "DOB": "1990-12-01"},
  {
    "name": "Shyam",
    "email": "shyam23@gmail.com",
    "age": 18,
    "DOB": "1995-07-01"
  },
  {"name": "John", "email": "john@gmail.com", "age": 10, "DOB": "2000-02-24"},
  {"name": "Ram", "age": 12, "DOB": "2000-02-01"}
];
