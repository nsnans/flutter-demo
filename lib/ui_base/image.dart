import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  final img = const NetworkImage(
      "https://raw.githubusercontent.com/nsnans/picGo-bed/main/vitepress_1x/202407021130232.png");

  List<Widget> _buildNetwork() {
    return [
      const Text("普通加载网络图片"),
      Image.network(
        "https://raw.githubusercontent.com/nsnans/picGo-bed/main/vitepress_1x/202407021130232.png",
      ),
      const Text("普通加载本地图片"),
      Image.asset(
        "assets/images/hello2.png",
      ),
      //占位图和淡入效果
      const Text("加载网络图片:占位图和淡入效果"),
      FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image:
            'https://raw.githubusercontent.com/nsnans/picGo-bed/main/vitepress_1x/202407021130232.png',
      ),
      const Text("加载网络图片:缓存网络图片"),
      //cachednetworkimage组件的缓存系统可以将图片缓存到内存和磁盘，并基于使用模式自动清理过期的缓存条目，
      CachedNetworkImage(
        placeholder: (context, url) => const CircularProgressIndicator(),
        imageUrl:
            'https://raw.githubusercontent.com/nsnans/picGo-bed/main/vitepress_1x/202407021130232.png',
      ),
    ];
  }

  List<Widget> _buildImageFill() {
    var widgets = [
      Image(
        image: img,
        height: 400,
        width: 40,
        fit: BoxFit.fill,
      ),
      Image(
        image: img,
        height: 400,
        width: 40,
        fit: BoxFit.contain,
      ),
      Image(
        image: img,
        height: 400,
        width: 20,
        fit: BoxFit.cover,
      ),
      Image(
        image: img,
        height: 400,
        width: 20,
        fit: BoxFit.fitWidth,
      ),
      Image(
        image: img,
        height: 400,
        width: 20,
        fit: BoxFit.fitHeight,
      ),
      Image(
        image: img,
        height: 400,
        width: 20,
        fit: BoxFit.scaleDown,
      ),
      Image(
        image: img,
        height: 400,
        width: 20,
        fit: BoxFit.none,
      ),
      Image(
        image: img,
        height: 400,
        width: 200,
        color: Colors.blue,
        //颜色反色，高对比度
        colorBlendMode: BlendMode.difference,
        fit: BoxFit.fill,
      ),
      Image(
        image: img,
        height: 400,
        width: 200,
        repeat: ImageRepeat.repeatY,
      )
    ].map(
      (e) {
        return Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              margin: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 100,
                child: e,
              ),
            ),
            Text(e.fit != null ? e.fit.toString() : '直接使用')
          ],
        );
      },
    ).toList();
    return [...widgets];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            ..._buildNetwork(),
            ..._buildImageFill(),
          ],
        ),
      ),
    );
  }
}
