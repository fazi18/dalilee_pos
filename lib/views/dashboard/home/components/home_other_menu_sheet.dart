import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/dashboard/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../../core/size.dart';
import '../../../../models/home_menu_item.dart';

showHomeOtherMenuBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        final ctr = HomeController.to;
        final tt = Theme.of(context).textTheme;
        return SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  height: 3,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.divider,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Other Menu',
                          style: tt.titleMedium,
                        ),
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.clear,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    addHeight(30),
                    _buildItemRow(
                      tt,
                      ctr.otherMenuItems.getRange(0, 4),
                    ),
                    addHeight(30),
                    _buildItemRow(
                      tt,
                      ctr.otherMenuItems.getRange(4, 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}

Widget _buildItemRow(TextTheme tt, items) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      children: [
        for (var item in items) _buildItemView(tt, item),
      ],
    ),
  );
}

Widget _buildItemView(TextTheme tt, HomeMenuItem item) {
  return Expanded(
    child: Column(
      children: [
        item.id == 19
            ? const SizedBox.shrink()
            : Image.asset(
                item.icon,
                width: 30,
                height: 30,
              ),
        addHeight(8),
        Text(
          item.label,
          style: tt.displaySmall?.copyWith(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
