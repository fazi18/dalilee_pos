import 'package:dalilee_pos/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

import 'order_detail_view.dart';
import 'order_itme_view.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Sales'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return const OrderItemView();
              },
            ),
          ),
          const OrderDetailView(),
        ],
      ),
    );
  }
}
