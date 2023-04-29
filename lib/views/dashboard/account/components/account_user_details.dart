import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

class AccountUserDetails extends StatelessWidget {
  const AccountUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.accentDarkHard, width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Image.asset(AppImages.icUser),
            ),
          ),
          addWidth(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tashee2', style: tt.titleMedium),
              addHeight(2),
              Text('1323456', style: tt.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
