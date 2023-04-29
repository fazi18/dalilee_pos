import 'package:dalilee_pos/views/product/show_product/product_controller.dart';
import 'package:get/get.dart';

class SelectProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
