import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final myControllerPassword = TextEditingController();
  final myControllerEmail = TextEditingController();
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.user),
                            iconSize: 35,
                            onPressed: () {
                              print("Pressed");
                            }),
                        SizedBox(height: 10),
                        Text("Login!", style: TextStyle(fontSize: 28))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          key: _formKey,
                          child: Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width > 780
                                    ? MediaQuery.of(context).size.width * 0.3
                                    : MediaQuery.of(context).size.width * 0.6,
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  controller: myControllerEmail,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Color(0xff6C6CE5),
                                      ),
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Color(0xff6C6CE5),
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Color(0xff6C6CE5),
                                          width: 2.0,
                                        ),
                                      ),
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      labelStyle:
                                          TextStyle(color: Colors.black)),
                                  validator: (value) =>
                                      EmailValidator.validate(value)
                                          ? null
                                          : "Please enter a valid email",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width > 780
                                    ? MediaQuery.of(context).size.width * 0.3
                                    : MediaQuery.of(context).size.width * 0.6,
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  controller: myControllerPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.security,
                                      color: Color(0xff6C6CE5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff6C6CE5),
                                        width: 2.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff6C6CE5),
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
                            )
                          ])),
                    ),
                    SizedBox(height: 10),
                    MouseRegion(
                      onEnter: (value) {
                        setState(() {
                          hovered = true;
                        });
                      },
                      onExit: (value) {
                        setState(() {
                          hovered = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          print('login');
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 275),
                          height: hovered ? 40 : 40,
                          width: hovered ? 200.0 : 195.0,
                          child: Center(
                            child: Text(
                              "Login".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: hovered
                                      ? Colors.white
                                      : Color(0xff6C6CE5)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: hovered ? Color(0xff6C6CE5) : Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 20.0,
                                  spreadRadius: 5.0,
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have a account ? ",
                              style: TextStyle(color: Colors.black87)),
                          Text(" Sign up now!",
                              style: TextStyle(color: Colors.red)),
                        ]),
                  ]),
            ),
          ),
        ));
  }
}
