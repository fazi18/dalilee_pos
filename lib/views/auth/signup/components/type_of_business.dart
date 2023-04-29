import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:dalilee_pos/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/size.dart';
import '../../../../styles/colors.dart';

class TypeOfBusiness extends StatelessWidget {
  const TypeOfBusiness({super.key});

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
      appBar: const DefaultAppBar(title: 'Type of Business'),
      body: ListView.separated(
        itemCount: ctr.businessTypes.length,
        separatorBuilder: (_, i) => const Divider(
          color: AppColors.divider,
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => ctr.onSelectTypeOfBusiness(index),
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
                        _getShortName(
                            ctr.businessTypes[index].title.toUpperCase()),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.primeryDark),
                      ),
                    ),
                  ),
                  addWidth(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ctr.businessTypes[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        addHeight(5),
                        Text(
                          ctr.businessTypes[index].description,
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2, overflow: TextOverflow.ellipsis,
                          // ?.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
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
