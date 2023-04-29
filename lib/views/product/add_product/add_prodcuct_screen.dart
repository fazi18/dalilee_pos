import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/views/product/add_product/add_product_controller.dart';
import 'package:dalilee_pos/widgets/custom_button.dart';
import 'package:dalilee_pos/widgets/custom_text_field.dart';
import 'package:dalilee_pos/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = AddProductController.to;
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Add Product'),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            CustomTextField(
              controller: ctr.nameCtr,
              label: 'Product name',
              keyboardType: TextInputType.name,
            ),
            addHeight(20),
            Row(
              children: [
                Expanded(
                    child: CustomTextField(
                  controller: ctr.purchasePriceCtr,
                  label: 'Purchase Price',
                  keyboardType: TextInputType.number,
                  hint: '0',
                )),
                addWidth(10),
                Expanded(
                    child: CustomTextField(
                  controller: ctr.sellingPriceCtr,
                  label: 'Selling Price',
                  keyboardType: TextInputType.number,
                  hint: '0',
                )),
              ],
            ),
            addHeight(40),
            CustomButton(
              text: 'Save',
              onPressed: () => Get.back(),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
