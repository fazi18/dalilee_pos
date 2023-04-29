import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/routes/routes.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:dalilee_pos/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/custom_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final ctr = AuthController.to;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.logo,
            width: MediaQuery.of(context).size.width * .7,
            height: 80,
          ),
          addHeight(40),
          LoginForm(ctr: ctr),
          addHeight(20),
          RichText(
            text: TextSpan(
              text: "Don't have an account? ",
              style: tt.bodyMedium,
              children: <TextSpan>[
                TextSpan(
                  text: 'REGISTER HERE',
                  style: tt.bodyMedium?.copyWith(
                    color: AppColors.primery,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => ctr.naviToSignup(),
                ),
              ],
            ),
          ),
          addHeight(40),
          InkWell(
            onTap: () => Get.toNamed(Routes.reset),
            child: Text(
              'Forgot the password?',
              style: tt.bodyMedium?.copyWith(color: AppColors.primeryLight),
            ),
          ),
        ],
      ),
    );
  }
}

/*
<--- Login form --->
*/
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.ctr,
  });

  final AuthController ctr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black.withOpacity(0.7),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone_android,
                      color: AppColors.white,
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: ctr.loginPhoneCtr,
                        hint: 'Your Phone Number',
                        showUnderLine: false,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: AppColors.black),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Obx(
                    () => Row(
                      children: [
                        const Icon(
                          Icons.lock_outline_rounded,
                          color: AppColors.white,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller: ctr.loginPasswordCtr,
                            hint: 'Your Password',
                            isObscure: ctr.loginPassObsure,
                            showUnderLine: false,
                          ),
                        ),
                        IconButton(
                          onPressed: () =>
                              ctr.loginPassObsure = !ctr.loginPassObsure,
                          icon: Icon(
                            ctr.loginPassObsure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        addHeight(30),
        CustomButton(
          onPressed: () => ctr.onLogin(),
          text: 'LOGIN',
          width: MediaQuery.of(context).size.width * .65,
        ),
      ],
    );
  }
}
