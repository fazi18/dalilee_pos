import 'package:dalilee_pos/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/type_of_business.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();
  /*
  <----------------->
  Login properties and logic
  <----------------->
  */

  final loginPhoneCtr = TextEditingController();
  final loginPasswordCtr = TextEditingController();

  final _loginPassObsure = true.obs;
  bool get loginPassObsure => _loginPassObsure.value;
  set loginPassObsure(bool val) => _loginPassObsure.value = val;

  /*
  <----------------->
  signup properties and logic
  <----------------->
  */
  final storeNameCtr = TextEditingController();
  final currencyCodeCtr = TextEditingController();
  final currencyFormateCtr = TextEditingController();
  final typeOfBusinessCtr = TextEditingController();
  final fullNameCtr = TextEditingController();
  final phoneNumberCtr = TextEditingController();
  final emailCtr = TextEditingController();
  final addressCtr = TextEditingController();
  final passwordCtr = TextEditingController();
  final referralCodeCtr = TextEditingController();

  final _signupPassObsure = true.obs;
  bool get signupPassObsure => _signupPassObsure.value;
  set signupPassObsure(bool val) => _signupPassObsure.value = val;

  final _currencySelectedIndex = Rxn<int>();
  int? get currencySelectedIndex => _currencySelectedIndex.value;

  final currencyCodes = [
    'IDR',
    'USD',
    'OMR',
    'MYP',
    'DOP',
  ];

  final List<String> currencyFormates = [
    'Use Decimal',
    'No Decimal',
  ];

  final List<TypeOfBusiness> businessTypes = [
    TypeOfBusiness(title: 'General store'),
    TypeOfBusiness(title: 'Culinary'),
    TypeOfBusiness(title: 'Service Products'),
    TypeOfBusiness(title: 'Healthcare'),
  ];

  onSelectCurrencyFormat(index) {
    currencyFormateCtr.text = currencyFormates[index];
    Get.back();
  }

  onSelectCurrencyCode(index) {
    _currencySelectedIndex.value = index;
    currencyCodeCtr.text = currencyCodes[index];
    Get.back();
  }

  onSelectTypeOfBusiness(index) {
    typeOfBusinessCtr.text = businessTypes[index].title;
    Get.back();
  }

  /*
  <----------------->
  reset password properties and logic
  <----------------->
  */

  final resetPhoneCtr = TextEditingController();
  final resetEmailCtr = TextEditingController();

  /*on taps*/
  naviToSignup() {
    Get.toNamed(Routes.signup);
  }

  naviToLogin() {
    Get.offNamed(Routes.login);
  }

  onLogin() {
    Get.offAndToNamed(Routes.dashboard);
  }

  onSignup() {
    Get.offAndToNamed(Routes.dashboard);
  }
}
