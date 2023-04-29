import 'package:dalilee_pos/views/product/add_product/add_product_controller.dart';
import 'package:get/get.dart';

class AddProdcutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddProductController());
  }
}
