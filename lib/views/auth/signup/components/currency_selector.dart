import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void showCurrencySelectorBottomSheet(BuildContext context, AuthController ctr) {
  final tt = Theme.of(context).textTheme;

  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * .38,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 4,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.grey1.withOpacity(.3),
              ),
            ),
            addHeight(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Currency',
                  style: tt.titleMedium,
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.clear,
                    // size: 30,
                  ),
                ),
              ],
            ),
            addHeight(25),
            Expanded(
              child: ListView.builder(
                itemCount: ctr.currencyCodes.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => ctr.onSelectCurrencyCode(index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ctr.currencyCodes[index],
                            style: tt.displayMedium,
                          ),
                          ctr.currencySelectedIndex == index
                              ? const Icon(Icons.done)
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    },
  );
}
