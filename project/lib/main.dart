import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_app_2/src/core/themes/dark_theme.dart';

import 'src/core/configs/initial_config/init_binding.dart';
import 'src/core/configs/initial_config/init_config.dart';
import 'src/core/configs/language_config/translation_config.dart';
import 'src/core/configs/windows_config/window_config.dart';
import 'src/core/themes/light_theme.dart';
import 'src/core/utils/constants/string_const.dart';
import 'src/routes/app_pages.dart';

void main() async {
  await InitConfig.start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    return ScreenUtilInit(
      designSize: WindowConfig.designSizeInit(ctx),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: kDebugMode,
          title: appName,
          theme: LightTheme.light,
          darkTheme: DarkTheme.dark,
          getPages: AppPages.pages,
          translations: TranslationConfig(),
          locale: Get.deviceLocale,
          fallbackLocale: const Locale("en", "US"),
          initialBinding: InitBinding(),
          enableLog: false,
        );
      },
    );
  }
}
