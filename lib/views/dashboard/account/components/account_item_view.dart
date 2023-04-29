import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

class AccountItemView extends StatelessWidget {
  final String text;
  final Function() onTap;
  final int? syncCount;
  const AccountItemView(
      {super.key, required this.text, required this.onTap, this.syncCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.primeryLight30,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: syncCount != null ? 20 : 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            syncCount != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Text(
                      '$syncCount',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 14,
                      color: AppColors.grey,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
