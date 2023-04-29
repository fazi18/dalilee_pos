import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/routes/routes.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/product/show_product/product_controller.dart';
import 'package:dalilee_pos/views/sales/sales_screen.dart';
import 'package:dalilee_pos/widgets/app_bars/product_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'components/product_category_view.dart';

class SelectProduct extends StatelessWidget {
  const SelectProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = ProductController.to;
    final tt = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.addProduct),
        backgroundColor: AppColors.primery,
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      appBar: ProductAppBar(
        title: 'Select Product',
        onFilterTap: () => Get.to(const ProductCategoryView()),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: ctr.products.length,
        separatorBuilder: (_, i) => const Divider(
          thickness: .8,
          color: AppColors.divider,
          height: 30,
        ),
        itemBuilder: (context, index) {
          final product = ctr.products[index];
          return ListTile(
            onTap: () => Get.to(const SalesScreen()),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
              ),
              child: Image.asset(AppImages.shortLogo),
            ),
            title: Text(
              product.name,
              style: tt.titleMedium,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addHeight(5),
                Text(
                  'OMR ${product.price} pcs',
                  style: tt.bodySmall?.copyWith(
                    color: AppColors.primery,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                addHeight(2),
                Text(
                  product.description,
                  style: tt.bodySmall?.copyWith(fontSize: 11),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
