import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/auth/signup/components/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import '../../../widgets/default_app_bar.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      appBar: DefaultAppBar(
        title: 'Signup',
        onBackButtonPressed: () => Get.back(),
      ),
      body: Column(
        children: const [
          Divider(
            color: AppColors.grey,
            height: 1,
            thickness: 1.32,
          ),
          Expanded(child: SignupForm()),
        ],
      ),
    );
  }
}
