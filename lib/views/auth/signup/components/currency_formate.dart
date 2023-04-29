import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:dalilee_pos/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class CurrencyFormate extends StatelessWidget {
  const CurrencyFormate({super.key});

  String _getShortName(String text) {
    List<String> words = text.split(" ");
    String result = "";
    for (String word in words) {
      result += word[0];
    }
    return result.length < 2 ? result : result[0] + result[1];
  }

  @override
  Widget build(BuildContext context) {
    final ctr = AuthController.to;
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Currency format'),
      body: ListView.separated(
        itemCount: ctr.currencyFormates.length,
        separatorBuilder: (_, i) => const Divider(
          color: AppColors.divider,
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => ctr.onSelectCurrencyFormat(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primeryLight30,
                    radius: 20,
                    child: Center(
                      child: Text(
                        _getShortName(ctr.currencyFormates[index]),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.primeryDark),
                      ),
                    ),
                  ),
                  addWidth(20),
                  Text(
                    ctr.currencyFormates[index],
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  addHeight(10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
