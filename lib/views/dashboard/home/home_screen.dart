import 'package:dalilee_pos/core/size.dart';
import 'package:flutter/material.dart';

import 'components/home_manu_view.dart';
import 'components/top_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        addHeight(10),
        const HomeTopView(),
        const HomeMenuItemView(),
      ],
    );
  }
}
