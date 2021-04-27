import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:school_management/components/home/home.dart';
import 'package:school_management/components/login/login.dart';

class FRouter {
  static final FluroRouter router = FluroRouter();

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage());
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => Home(
            // page: params['name'][0],
            extra: params['extra'][0],
          ));

  static void setupRouter() {
    router.define("/", handler: _loginHandler);

    router.define("/main/:extra",
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
  }
}
