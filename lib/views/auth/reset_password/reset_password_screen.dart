import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:dalilee_pos/widgets/custom_button.dart';
import 'package:dalilee_pos/widgets/custom_text_field.dart';
import 'package:dalilee_pos/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final ctr = AuthController.to;
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Reset Password'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            addHeight(30),
            Text(
              'Find your account',
              style: tt.headlineSmall,
            ),
            addHeight(20),
            Text(
              'Enter the mobile number and email that has been linked to your account',
              style: tt.displayMedium,
              textAlign: TextAlign.center,
            ),
            addHeight(30),
            CustomBorderTextField(
              controller: ctr.resetPhoneCtr,
              hint: 'Phone Number',
              keyboardType: TextInputType.number,
            ),
            addHeight(20),
            CustomBorderTextField(
              controller: ctr.resetEmailCtr,
              hint: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            addHeight(30),
            CustomButton(
              text: 'Send',
              onPressed: () {},
              width: MediaQuery.of(context).size.width * .65,
            )
          ],
        ),
      ),
    );
  }
}
