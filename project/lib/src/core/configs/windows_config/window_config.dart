// todo : Remove the comment marks once to enable this file

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:window_manager/window_manager.dart';

// import '../../../shared/constants/double_const.dart';
// import '../../../shared/constants/envs_const.dart';
// import '../../../shared/constants/string_const.dart';

class WindowConfig {
  WindowConfig._();

  static Size designSizeInit(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    if (width <= 480) {
      // Téléphone iOS et Android
      return defaultTargetPlatform == TargetPlatform.iOS
          ? const Size(375, 812)
          : const Size(360, 640);
    } else if (width <= 1024) {
      // Tablette iOS et Android
      return const Size(768, 1024);
    } else {
      // Desktop (Web, Windows, Linux, macOS)
      return const Size(1440, 900);
    }
  }

  // static void windowsInit() {
  //   WindowManager.instance.setTitle("$app ${EnvPath.env}");
  //   WindowManager.instance.setSize(const Size(windowWidth, windowHeight));
  //   WindowManager.instance.setResizable(false);
  //   WindowManager.instance.center(animate: true);
  // }
}
