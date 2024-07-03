import 'package:flutter/material.dart';

import 'routerWidget.dart';
import 'ui_base/route.dart';

Map<String, WidgetBuilder> topRoutes = {
  '/ui_basic': (context) => RouteWidget(routes: pageUiBasicRoutes),
  // '/state': (context) => RouteWidget(routes: pageStateRoutes),
  // '/constraint': (context) => RouteWidget(routes: pageConstraintRoutes),
  // "/layout": (context) => RouteWidget(routes: pageLayoutRoutes),
  // "/container": (context) => RouteWidget(routes: pageContainerRoutes),
  // "/scroll": (context) => RouteWidget(routes: pageScrollRoutes),
  // "/sliver": (context) => RouteWidget(routes: pageSliverRoutes),
  // "/functional": (context) => RouteWidget(routes: pageFunctionalRoutes),
  // "/event": (context) => RouteWidget(routes: pageEventRoutes),
  // "/animation": (context) => RouteWidget(routes: pageAnimationRoutes),
  // "/custom": (context) => RouteWidget(routes: pageCustomRoutes),
  // "/data": (context) => RouteWidget(routes: pageDataRoutes),
  // "/other": (context) => RouteWidget(routes: pageOtherRoutes),
};

Widget homeWidget = RouteWidget(routes: topRoutes);

// 打平
Map<String, WidgetBuilder> mapRoutes(
  Map<String, WidgetBuilder> routes,
) {
  Map<String, WidgetBuilder> result = {};

  for (final item in routes.entries) {
    final newBuilder = ((context) {
      final widget = item.value(context);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '当前路由：${item.key}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            widget
          ],
        ),
      );
    });
    result[item.key] = newBuilder;
  }
  return result;
}
