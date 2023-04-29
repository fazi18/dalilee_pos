import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

class OrderItemView extends StatelessWidget {
  const OrderItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: AppColors.white,
      child: Row(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
            ),
            child: Image.asset(AppImages.shortLogo),
          ),
          addWidth(10),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'product name',
                  style: tt.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 11),
                ),
                addHeight(3),
                Text(
                  'OMR 2.00',
                  style: tt.displaySmall?.copyWith(
                    color: AppColors.primery,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                addHeight(3),
                Text(
                  'add a note',
                  style: tt.bodySmall?.copyWith(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.divider),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 28,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: AppColors.divider,
                          width: 1,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '1.0',
                          style: tt.bodyMedium?.copyWith(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: AppColors.divider,
                          width: 1,
                        ),
                      ),
                      const Expanded(
                        child: Icon(
                          Icons.arrow_drop_up_outlined,
                          size: 28,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
                addHeight(10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.vermillion,
                  ),
                  child: Center(
                    child: Text(
                      'Delete',
                      style: tt.bodyMedium?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // child: ListTile(
      //   leading: Container(
      //     height: 64,
      //     width: 64,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(64),
      //     ),
      //     child: Image.asset(AppImages.shortLogo),
      //   ),
      //   title: Text(
      //     'product name',
      //     style: tt.displaySmall?.copyWith(fontWeight: FontWeight.w600),
      //   ),
      //   subtitle: Column(
      //     children: [
      //       Text(
      //         'OMR 2.00',
      //         style: tt.displaySmall?.copyWith(
      //           color: AppColors.primery,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Text(
      //         'add a note',
      //         style: tt.bodySmall?.copyWith(),
      //       ),
      //     ],
      //   ),
      //   trailing: Column(
      //     children: [
      //       Container(
      //         width: 100,
      //         decoration: BoxDecoration(
      //           border: Border.all(color: AppColors.divider),
      //           borderRadius: BorderRadius.circular(5),
      //         ),
      //         child: Row(
      //           children: [
      //             const Expanded(
      //               child: Icon(
      //                 Icons.arrow_drop_down,
      //                 size: 18,
      //                 color: AppColors.black,
      //               ),
      //             ),
      //             Expanded(
      //               child: Text(
      //                 '1.0',
      //                 style: tt.bodySmall?.copyWith(
      //                   color: AppColors.orange,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //             const Expanded(
      //               child: Icon(
      //                 Icons.arrow_drop_down,
      //                 size: 18,
      //                 color: AppColors.black,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
