import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

class AccountHeadlineView extends StatelessWidget {
  final String text;
  const AccountHeadlineView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      color: AppColors.bgGray,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
