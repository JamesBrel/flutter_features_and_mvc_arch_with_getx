// todo : Remove the comment marks once to activate the lines you need to develop your project.

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';

// import '../shared/constants/int_const.dart';
import '../../services/update/requests/check_new_updates_request.dart';

class InitConfig {
  InitConfig._();
  static Future<void> start() async {
    //! WidgetFlutter and DeviceType Initialization
    // active these lines down
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
      Element? context = WidgetsFlutterBinding.ensureInitialized().rootElement;

      //! Prelod All the svg
      // var svgs = [];
      // for (var svgImage in svgs) {
      //   await svg.cache.putIfAbsent(SvgAssetLoader(svgImage).cacheKey(null),
      //       () => SvgAssetLoader(svgImage).loadBytes(null));
      // }

      //! Prelod All the png
      // var pngs = [];
      // for (var pngImage in pngs) {
      //   await precacheImage(Image.asset(pngImage).image, context!);
      // }

      //! Prelod All the gif
      // var gifs = [];
      // for (var gifImage in gifs) {
      //   await precacheImage(Image.asset(gifImage).image, context!);
      // }

      //! Prelod All the jpg
      // var jpgs = [];
      // for (var jpgImage in jpgs) {
      //   await precacheImage(Image.asset(jpgImage).image, context!);
      // }

      //! splash screen remover
      // await Future.delayed(const Duration(seconds: splashDuration))
      //     .then((_) => {
      //           FlutterNativeSplash.remove(),
      //         });

      //! screen config
      // WindowConfig.windowsInit();

      //! services config init
      // await FirebaseConfig.init(
      //   env: EnvPath.env,
      // );

      // HttpOverrides.global = new HttpOverridesHelper();

      // RealmLocalConfig.localConfig();

      //! updates Checking
      CheckNewUpdatesRequest.checkTheUpdates();
    });
  }
}
