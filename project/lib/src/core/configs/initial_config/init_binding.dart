import 'package:get/get.dart';

import '../../../features/greeting_feat/controllers/hello_world/hello_world_binding.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    //! 🔹 Injection of functions used in the overall application

    //! 🔹 Dependency injection of functionalities
    HelloWorldBinding().dependencies();
  }
}
