import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  final TextStyle bold24Roboto = const TextStyle(
    color: Colors.red,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  // 声明文本样式
  final robotoTextStyle = const TextStyle(
    fontFamily: 'Roboto',
  );

  final robotoTextItalicStyle = const TextStyle(
    fontFamily: 'Roboto',
    fontStyle: FontStyle.italic,
  );

  final robotoTextBoldStyle = const TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  final qingKeHuangyouTextStyle = const TextStyle(
    fontFamily: 'QingKeHuangyou',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //文本对齐
        const Text(
          "文本对齐方向An optional maximum number of lines for the text to span, wrapping if necessary. If the text exceeds the given number of lines, it will be truncated according to [overflow].",
          maxLines: 2,
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 20),
        //多行文本
        const Text(
          "多行文本An optional maximum number of lines for the text to span, wrapping if necessary. If the text exceeds the given number of lines, it will be truncated according to [overflow]",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 20),
        //斜体，加粗，字体
        Text(
          "普通.Roboto ",
          style: robotoTextStyle,
        ),
        Text(
          "斜体.Roboto ",
          style: robotoTextItalicStyle,
        ),
        Text(
          "加粗. Roboto",
          style: robotoTextBoldStyle,
        ),
        Text(
          "普通. QingKeHuangyou ",
          style: qingKeHuangyouTextStyle,
        ),
        //样式
        Text(
          "Hello world",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              //行高，是倍数，高度为fontSize*height
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        //多文本组合
        RichText(
          text: TextSpan(
            style: bold24Roboto,
            children: const <TextSpan>[
              TextSpan(text: 'hello '),
              TextSpan(
                text: 'world',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  color: Colors.green,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
        //继承文本样式
        const DefaultTextStyle(
          //1.设置文本默认样式
          style: TextStyle(
            color: Colors.purple,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.start,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("hello one"),
              Text("hello two"),
              Text(
                "hello three",
                style: TextStyle(
                  inherit: false, //2.不继承默认样式

                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
