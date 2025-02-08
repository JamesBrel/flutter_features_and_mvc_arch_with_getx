import 'package:get/get.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../data/system_say_hello_world_data.dart';

class HelloWorldController extends GetxController {
  final SystemSayHelloWorldData _systemSayHelloWorldData;

  HelloWorldController({
    required SystemSayHelloWorldData systemSayHelloWorldData,
  }) : _systemSayHelloWorldData = systemSayHelloWorldData;

  var hello = "".obs;

  @override
  void onInit() {
    _sayHelloWorld();
    super.onInit();
  }

  void _sayHelloWorld() {
    Result<String, void> _result = _systemSayHelloWorldData.sayHelloWorld();
    _result.whenSuccess((success) => hello.value = success);
  }
}
