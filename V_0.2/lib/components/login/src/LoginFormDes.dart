import 'dart:async';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/Responsive/layout.dart';
import 'package:school_management/theme/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginFormDesktop extends StatefulWidget {
  LoginFormDesktop({Key key}) : super(key: key);

  @override
  _LoginFormDesktopState createState() => _LoginFormDesktopState();
}

class _LoginFormDesktopState extends State<LoginFormDesktop> {
  final _formKey = GlobalKey<FormState>();
  final myControllerPassword = TextEditingController();
  final myControllerEmail = TextEditingController();
  bool hovered = false;
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomethingw() async {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/main/');
    });
  }

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      _doSomethingw();
      _btnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's Begin!",
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: wt(context) * 4)),
          ),
          SizedBox(
            height: ht(context) * 2,
          ),
          Container(
            width: wt(context) * 40,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: myControllerEmail,
              obscureText: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
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
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black)),
              validator: (value) => EmailValidator.validate(value)
                  ? null
                  : "Please enter a valid email",
            ),
          ),
          SizedBox(
            height: ht(context) * 2,
          ),
          Container(
            width: wt(context) * 40,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: myControllerPassword,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.security,
                  color: Colors.black,
                ),
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
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black),
              ),
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
          RoundedLoadingButton(
            width: wt(context) * 10,
            child: Text('Login!', style: TextStyle(color: Colors.white)),
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
          )
        ],
      ),
    );
  }
}
