import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:school_management/components/busFees/bus.dart';
import 'package:school_management/components/home/home.dart';
import 'package:school_management/components/login/login.dart';

class FRouter {
  static final FluroRouter router = FluroRouter();

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Login());

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Home());

  static Handler _busHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Bus());

  static void setupRouter() {
    router.define("/", handler: _loginHandler);

    router.define("/main",
        handler: _homeHandler, transitionType: TransitionType.fadeIn);

    router.define("/bus",
        handler: _busHandler, transitionType: TransitionType.fadeIn);
  }
}
