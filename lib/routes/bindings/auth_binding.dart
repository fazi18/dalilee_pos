import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(
      AuthController(),
    );
  }
}
