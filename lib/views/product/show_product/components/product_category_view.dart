import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/default_app_bar.dart';

class ProductCategoryView extends StatelessWidget {
  const ProductCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'Product Category',
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 15),
        itemCount: 2,
        separatorBuilder: (_, i) =>
            const Divider(color: AppColors.divider, thickness: 1.2),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Get.back(),
            leading: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.primeryLight30,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(AppImages.icCategory),
              ),
            ),
            title: Text(
              'General',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
