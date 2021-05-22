import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/stylingComponents/appbar.dart';
import 'package:school_management/stylingComponents/drawer/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:school_management/theme/colors.dart';

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
                                ? wt(context) * 100
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
                          width: wt(context) * 10,
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
                      SizedBox(
                        height: ht(context) * 2,
                      ),
                      Container(
                        width: wt(context) * 100,
                        child: DataTable(
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Name',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Age',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text('Role',
                                  style: TextStyle(
                                    fontSize: 24,
                                  )),
                            ),
                          ],
                          rows: data
                              .map((e) => DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text(e['name'],
                                          style: TextStyle(
                                            fontSize: 24,
                                          ))),
                                      DataCell(Text(e['age'].toString())),
                                      DataCell(Text(e['role'])),
                                    ],
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

const data = [
  {"name": "arpit", "age": 21, "role": "admin"},
  {"name": "arpit2", "age": 22, "role": "admin"},
  {"name": "arpit3", "age": 23, "role": "admin"},
  {"name": "arpit4", "age": 24, "role": "admin"},
  {"name": "arpit5", "age": 25, "role": "admin"},
  {"name": "arpit6", "age": 26, "role": "admin"},
  {"name": "arpit7", "age": 27, "role": "admin"},
  {"name": "arpit8", "age": 28, "role": "admin"},
];
