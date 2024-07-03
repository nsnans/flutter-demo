import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({
    super.key,
  });

  Widget _buildMaterialIcon() {
    //https://material.io/tools/icons/，在这里可以查到所有的Material icon
    String icons = "特殊文字: ";
    // accessible: 0xe03e
    icons += "\uE03e";
    // error:  0xe237
    icons += " \uE237";
    // fingerprint: 0xe287
    icons += " \uE287";

    return Text(
      icons,
      style: const TextStyle(
        fontFamily: "MaterialIcons",
        fontSize: 24.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildMaterialIcon2() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('内置Icon'),
        Icon(Icons.accessible, color: Colors.green),
        Icon(Icons.error, color: Colors.green),
        Icon(Icons.fingerprint, color: Colors.green),
      ],
    );
  }

  final IconData like =
      const IconData(0xe61d, fontFamily: 'myIcon', matchTextDirection: true);
  final IconData home =
      const IconData(0xe61e, fontFamily: 'myIcon', matchTextDirection: true);

  Widget _buildMyIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('使用IconFont'),
        Icon(like, color: Colors.blue),
        Icon(home, color: Colors.blue),
      ],
    );
  }

  Widget _buildUrl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              void a() async {
                final url = Uri(
                  scheme: 'https',
                  host: 'material.io',
                  path: '/tools/icons/',
                  // queryParameters: {'search': 'blue', 'limit': '10'},
                );
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'could not go url';
                }
              }

              a();
            },
            child: const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                '点击查看所有Material icon',
                style: TextStyle(color: Colors.blue),
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildUrl(),
          _buildMaterialIcon(),
          _buildMaterialIcon2(),
          _buildMyIcon(),
        ],
      ),
    );
  }
}
