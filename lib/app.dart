import 'package:flutter/material.dart';

import 'view/router/router.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = MyRouter();

  @override
  Widget build(context) {
    return MaterialApp.router(
      routeInformationParser: _router.router.routeInformationParser,
      routeInformationProvider: _router.router.routeInformationProvider,
      routerDelegate: _router.router.routerDelegate,
    );
  }
}
