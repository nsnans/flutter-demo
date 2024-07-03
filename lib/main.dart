import 'package:flutter/material.dart';

import 'router.dart';
import 'ui_base/route.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    routes: mapRoutes({
      "/": (context) => homeWidget,
      ...topRoutes,
      ...pageUiBasicRoutes,
    }),
    initialRoute: '/',
  ));
}

