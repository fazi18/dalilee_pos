import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  // final double borderRadius;
  final String hint;
  final String? label;
  final bool isObscure;
  final Widget? prefix;
  final Widget? suffix;
  final Color fillColor;
  // final Color focusedBorderColor;
  final bool showUnderLine;
  final Color textColor;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final double padding;
  final String? Function(String? value)? validator;
  final bool enabled;
  final int maxLine;
  final Function(String value)? onChange;
  final Function(String value)? onSubmited;
  const CustomTextField({
    Key? key,
    required this.controller,
    // this.borderRadius = 5,
    this.hint = '',
    this.label,
    this.isObscure = false,
    this.prefix,
    this.suffix,
    this.fillColor = Colors.transparent,
    // this.focusedBorderColor = AppColors.light1Text,
    this.textColor = AppColors.white,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.padding = 10,
    this.enabled = true,
    this.maxLine = 1,
    this.onChange,
    this.onSubmited,
    this.showUnderLine = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style:
                Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 11),
          ),
        // addHeight(5),
        TextFormField(
          controller: controller,
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 11),
          enabled: enabled,
          maxLines: maxLine,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          obscureText: isObscure,
          onFieldSubmitted: onSubmited,
          onChanged: onChange,
          cursorColor: AppColors.primery,
          decoration: InputDecoration(
            fillColor: fillColor,

            hintText: hint,
            hintStyle: const TextStyle().s12.hintColor.small,
            // labelStyle: const TextStyle().s12.lableColor.small,
            // labelText: label,
            prefix: prefix,
            suffix: suffix,
            contentPadding: EdgeInsets.all(padding),
            // contentPadding:
            // EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: UnderlineInputBorder(
              borderSide: showUnderLine
                  ? BorderSide(color: AppColors.grey.withOpacity(.3))
                  : BorderSide.none,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: showUnderLine
                  ? BorderSide(color: AppColors.grey.withOpacity(.3))
                  : BorderSide.none,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: showUnderLine
                  ? BorderSide(color: AppColors.grey.withOpacity(.3))
                  : BorderSide.none,
            ),
            // disabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(color: focusedBorderColor, width: 1.0),
            //   borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            // ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}

class CustomBorderTextField extends StatelessWidget {
  final TextEditingController controller;
  // final double borderRadius;
  final String hint;
  // final String? label;
  // final bool isObscure;
  // final Widget? prefix;
  // final Widget? suffix;
  // final Color fillColor;
  // final Color focusedBorderColor;
  // final bool showUnderLine;
  // final Color textColor;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final double padding;
  final String? Function(String? value)? validator;
  final bool enabled;
  final int maxLine;
  final Function(String value)? onChange;
  final Function(String value)? onSubmited;
  const CustomBorderTextField({
    Key? key,
    required this.controller,
    // this.borderRadius = 5,
    this.hint = '',
    // this.label,
    // this.isObscure = false,
    // this.prefix,
    // this.suffix,
    // this.fillColor = Colors.transparent,
    // this.focusedBorderColor = AppColors.light1Text,
    // this.textColor = AppColors.white,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.padding = 15,
    this.enabled = true,
    this.maxLine = 1,
    this.onChange,
    this.onSubmited,
    // this.showUnderLine = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          style: Theme.of(context).textTheme.displaySmall,
          enabled: enabled,
          maxLines: maxLine,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          // obscureText: isObscure,
          onFieldSubmitted: onSubmited,
          onChanged: onChange,
          cursorColor: AppColors.primery,
          decoration: InputDecoration(
            // fillColor: fillColor,

            hintText: hint,
            hintStyle: const TextStyle().s14.hintColor.small,
            // labelStyle: const TextStyle().s12.lableColor.small,
            // labelText: label,
            // prefix: prefix,
            // suffix: suffix,
            contentPadding: EdgeInsets.all(padding),
            // contentPadding:
            // EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.divider, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.divider, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.divider, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.divider, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
