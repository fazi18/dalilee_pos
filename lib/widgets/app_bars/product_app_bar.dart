import 'package:dalilee_pos/core/images.dart';
import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onFilterTap;
  const ProductAppBar({
    super.key,
    required this.title,
    required this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      iconTheme: Theme.of(context).iconTheme,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppImages.icSearch,
              height: 14,
            )),
        IconButton(
            onPressed: () => onFilterTap(),
            icon: Image.asset(AppImages.icDrawer, height: 18)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
