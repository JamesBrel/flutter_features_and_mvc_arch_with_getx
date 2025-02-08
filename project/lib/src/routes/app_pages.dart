import 'package:get/get.dart';

import '../features/greeting_feat/views/screens/welcome_screen.dart';

part 'routes.dart';

abstract class AppPages {
  AppPages._();

  static var pages = [
    GetPage(
      name: Routes.mainRoute,
      page: () => WelcomeScreen(),
    ),
  ];
}
