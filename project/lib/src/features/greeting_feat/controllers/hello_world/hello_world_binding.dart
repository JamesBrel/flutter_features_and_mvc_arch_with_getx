import 'package:get/get.dart';

import '../../data/system_say_hello_world_data.dart';
import 'hello_world_controller.dart';

class HelloWorldBinding implements Bindings {
  @override
  void dependencies() {
    //! ---Data---
    Get.lazyPut<SystemSayHelloWorldData>(
      () => SystemSayHelloWorldData(),
    );

    //! ---Controllers---
    Get.put<HelloWorldController>(HelloWorldController(
        systemSayHelloWorldData: Get.find<SystemSayHelloWorldData>()));
  }
}
