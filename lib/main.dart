import 'package:flutter/material.dart';
// import 'package:fluro/fluro.dart';
import 'package:school_management/routes/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FRouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/main/arpit',
      onGenerateRoute: FRouter.router.generator,
    );
  }
}
