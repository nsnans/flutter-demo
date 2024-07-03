import 'package:flutter/material.dart';

class RouteWidget extends StatelessWidget {
  final Map<String, WidgetBuilder> routes;

  const RouteWidget({
    super.key,
    required this.routes,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (final route in routes.entries) {
      widgets.addAll([
        OutlinedButton(
          key: ValueKey(route.key),
          onPressed: () {
            Navigator.pushNamed(context, route.key);
          },
          child: Text('前往路由：${route.key}'),
        ),
        const SizedBox(
          height: 20,
        ),
      ]);
    }
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: widgets,
      ),
    );
  }
}
