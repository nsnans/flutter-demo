import 'package:flutter/material.dart';

import 'button.dart';
import 'icon.dart';
import 'image.dart';
import 'text.dart';

Map<String, WidgetBuilder> pageUiBasicRoutes = {
  "/ui_basic/button": (context) => const ButtonDemo(),
  "/ui_basic/icon": (context) => const IconDemo(),
  "/ui_basic/text": (context) => const TextDemo(),
  // "/ui_basic/image": (context) => const ImageDemo(),
  // "/ui_basic/textEditStyle": (context) => const TextEditStyleDemo(),
  // "/ui_basic/textEditChangedAndSet": (context) =>
  //     const TextEditChangedAndSetDemo(),
  // "/ui_basic/textEditFocus1": (context) => TextEditFocus1(),
  // "/ui_basic/textEditFocus2": (context) => TextEditFocus2(),
};
