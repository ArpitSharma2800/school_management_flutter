import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:school_management/components/login/login.dart';

class FRouter {
  static final FluroRouter router = FluroRouter();

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage());

  static void setupRouter() {
    router.define("/", handler: _loginHandler);
  }
}
