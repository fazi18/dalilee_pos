import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Column(
      children: [
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: AppColors.white,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: AppColors.primery,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        ' 1.0',
                        style: tt.bodyMedium?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  addWidth(10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Order',
                        style: tt.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        'OMR 40.0',
                        style: tt.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primery,
                            fontSize: 14),
                      ),
                      addHeight(20),
                    ],
                  ),
                ],
              ),
              CustomButton(
                text: 'Next',
                onPressed: () {},
                width: double.infinity,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
