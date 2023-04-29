import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

extension TextStyles on TextStyle {
  TextStyle get s17 => copyWith(fontSize: 17);
  TextStyle get s16 => copyWith(fontSize: 16);
  TextStyle get s15 => copyWith(fontSize: 15);
  TextStyle get s13 => copyWith(fontSize: 13);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s10 => copyWith(fontSize: 10);
  TextStyle get s11 => copyWith(fontSize: 11);
  TextStyle get s9 => copyWith(fontSize: 9);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s25 => copyWith(fontSize: 25);
  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s22 => copyWith(fontSize: 22);
  TextStyle get s21 => copyWith(fontSize: 21);
  TextStyle get s23 => copyWith(fontSize: 23);
  TextStyle get s26 => copyWith(fontSize: 27);
  TextStyle get s18 => copyWith(fontSize: 19);
  TextStyle get s20 => copyWith(fontSize: 20);
  TextStyle get s34 => copyWith(fontSize: 34);
  TextStyle get bold => copyWith(
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      );
  TextStyle get medium => copyWith(
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      );
  TextStyle get small => copyWith(
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
      );
  TextStyle get bold700 => copyWith(
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
      );

  TextStyle get pColor => copyWith(color: AppColors.primery);
  TextStyle get hintColor => copyWith(color: AppColors.grey.withOpacity(.8));
  TextStyle get lightColor => copyWith(color: AppColors.grey.withOpacity(.5));
  TextStyle get lableColor => copyWith(color: AppColors.grey);
  TextStyle get titleColor => copyWith(color: AppColors.grey1);
  TextStyle get wColor => copyWith(color: AppColors.white);
  TextStyle get darkColor => copyWith(color: AppColors.dark);
}
