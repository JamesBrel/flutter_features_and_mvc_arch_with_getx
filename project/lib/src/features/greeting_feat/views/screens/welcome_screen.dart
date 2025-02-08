import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/utils/constants/lang_const.dart';
import '../../controllers/hello_world/hello_world_controller.dart';

part '../layouts/phone_layouts/welcome_phone_layout.dart';
part '../widgets/greeting_widget.dart';
part '../widgets/info_widget.dart';

class WelcomeScreen extends GetResponsiveView<HelloWorldController> {
  WelcomeScreen({
    super.key,
  });

  //*-- PHONE SCREEN --
  @override
  Widget? phone() {
    return _WelcomePhoneLayout(helloWorldController: controller);
  }

  //*-- TABLET SCREEN --
  // @override
  // Widget? tablet() {
  // todo: implement tablet
  //   return super.tablet();
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop() {
  // todo: implement desktop
  //   return super.desktop();
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch() {
  // todo: implement watch
  //   return super.watch();
  // }
}
