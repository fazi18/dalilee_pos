import 'package:dalilee_pos/core/images.dart';
import 'package:flutter/material.dart';

import 'components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppImages.splashBG,
              height: double.infinity,
              width: double.infinity,
            ),
            const Center(
              child: LoginBody(),
            ),
          ],
        ),
      ),
    );
  }
}
