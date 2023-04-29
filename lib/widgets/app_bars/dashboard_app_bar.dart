import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? elevation;
  final VoidCallback? onBackButtonPressed;

  const DashboardAppBar(
      {super.key,
      required this.title,
      this.onBackButtonPressed,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.translate)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
