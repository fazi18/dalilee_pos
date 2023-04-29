import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/auth/auth_controller.dart';
import 'package:dalilee_pos/views/auth/signup/components/type_of_business.dart';
import 'package:dalilee_pos/widgets/custom_button.dart';
import 'package:dalilee_pos/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'currency_formate.dart';
import 'currency_selector.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final space = addHeight(16);
    final ctr = AuthController.to;
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        CustomTextField(
          controller: ctr.storeNameCtr,
          padding: 0,
          label: 'Name Store',
        ),
        space,
        FormActionField(
          ctr: ctr.currencyCodeCtr,
          label: 'Currency Code',
          onTap: () => showCurrencySelectorBottomSheet(context, ctr),
        ),
        space,
        FormActionField(
          ctr: ctr.currencyFormateCtr,
          label: 'Currency Format',
          onTap: () => Get.to(const CurrencyFormate()),
        ),
        space,
        FormActionField(
          ctr: ctr.typeOfBusinessCtr,
          label: 'Type of business',
          onTap: () => Get.to(const TypeOfBusiness()),
        ),
        space,
        CustomTextField(
          controller: ctr.fullNameCtr,
          padding: 0,
          label: 'Full Name',
        ),
        space,
        CustomTextField(
          controller: ctr.phoneNumberCtr,
          padding: 0,
          label: 'Number Phone',
        ),
        space,
        CustomTextField(
          controller: ctr.emailCtr,
          padding: 0,
          label: 'Email',
        ),
        space,
        CustomTextField(
          controller: ctr.addressCtr,
          padding: 0,
          label: 'Address',
        ),
        space,
        Obx(
          () => CustomTextField(
            controller: ctr.passwordCtr,
            padding: 0,
            label: 'Password',
            isObscure: ctr.signupPassObsure,
            suffix: InkWell(
              onTap: () => ctr.signupPassObsure = !ctr.signupPassObsure,
              child: Icon(
                ctr.signupPassObsure ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
        ),
        space,
        CustomTextField(
          controller: ctr.referralCodeCtr,
          padding: 0,
          label: 'Referral Code',
        ),
        addHeight(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: CustomButton(
            text: 'SIGNUP',
            onPressed: () {},
            width: MediaQuery.of(context).size.width * .65,
          ),
        ),
        addHeight(20),
        Center(
          child: RichText(
            text: TextSpan(
              text: "Already have an account? ",
              style: Theme.of(context).textTheme.bodyMedium,
              children: <TextSpan>[
                TextSpan(
                  text: 'LOGIN HERE',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.primery, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => ctr.naviToLogin(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FormActionField extends StatelessWidget {
  final TextEditingController ctr;
  final String label;
  final Function() onTap;
  const FormActionField({
    super.key,
    required this.ctr,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: ctr,
                  padding: 0,
                  label: label,
                  enabled: false,
                  showUnderLine: false,
                ),
              ),
              SvgPicture.asset(
                AppImages.icFilter,
                // ignore: deprecated_member_use
                color: Theme.of(context).iconTheme.color,
                height: 12,
              ),
            ],
          ),
          Divider(
            color: AppColors.grey.withOpacity(.3),
            height: 1,
            thickness: 1.3,
          ),
        ],
      ),
    );
  }
}
