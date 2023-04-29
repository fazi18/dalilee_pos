import 'package:dalilee_pos/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get to => Get.find();

  final products = [
    Product('amwaj perfume', '2.0', ''),
    Product('lamp', '2.0', ''),
    Product('perfume', '4.0', 'description'),
  ];
}
