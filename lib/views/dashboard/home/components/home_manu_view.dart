import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/dashboard/home/home_controller.dart';
import 'package:flutter/material.dart';

import '../../../../models/home_menu_item.dart';

class HomeMenuItemView extends StatelessWidget {
  const HomeMenuItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = HomeController.to;
    final tt = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          addHeight(20),
          _buildItemRow(
            tt,
            ctr.menuItems.getRange(0, 4),
          ),
          const Divider(
            thickness: 1,
            height: 40,
          ),
          _buildItemRow(
            tt,
            ctr.menuItems.getRange(4, 8),
          ),
          const Divider(
            thickness: 1,
            height: 40,
          ),
          _buildItemRow(
            tt,
            ctr.menuItems.getRange(8, 12),
          ),
          addHeight(20),
        ],
      ),
    );
  }

  Widget _buildItemRow(TextTheme tt, items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          for (var item in items) HomeItemView(item: item),
        ],
      ),
    );
  }
}

class HomeItemView extends StatelessWidget {
  final HomeMenuItem item;
  const HomeItemView({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Expanded(
      child: InkWell(
        onTap: () => HomeController.to.onItemTap(item.id),
        child: Column(
          children: [
            Image.asset(
              item.icon,
              width: 32,
              height: 32,
            ),
            addHeight(8),
            Text(
              item.label,
              style: tt.displaySmall?.copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
