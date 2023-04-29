import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  static AddProductController get to => Get.find();

  final nameCtr = TextEditingController();
  final sellingPriceCtr = TextEditingController();
  final purchasePriceCtr = TextEditingController();
}
