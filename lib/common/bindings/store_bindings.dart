import 'package:get/get.dart';
import 'package:task1/common/controllers/state_controller.dart';

class ControllerBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => StateController());
  }
}
