import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final darkTheme = ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primery,
        textTheme: TextTheme(
          labelSmall: const TextStyle().s12.small.lableColor,
          labelMedium: const TextStyle().s14.small.lableColor,
          labelLarge: const TextStyle().s16.bold.lableColor,
          bodySmall: const TextStyle().s12.small.lightColor,
          bodyMedium: const TextStyle().s14.small.lightColor,
          bodyLarge: const TextStyle().s16.bold.lightColor,
          titleSmall: const TextStyle().s14.medium.wColor,
          titleMedium: const TextStyle().s16.bold.wColor,
          titleLarge: const TextStyle().s20.bold.wColor,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ));
    final ThemeData lightThime = ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primery,
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(color: AppColors.dark),
          backgroundColor: AppColors.white,
        ),
        textTheme: TextTheme(
          labelSmall: const TextStyle().s11.small.lableColor,
          labelMedium: const TextStyle().s14.small.lableColor,
          labelLarge: const TextStyle().s16.bold.lableColor,
          bodySmall: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.secondaryText,
          ),
          bodyMedium: const TextStyle().s14.medium.lableColor,
          bodyLarge: const TextStyle().s16.bold.darkColor,
          titleSmall: const TextStyle().s14.medium.darkColor,
          titleMedium: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
          ),
          titleLarge: const TextStyle().s18.bold.darkColor,
          displayMedium: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.primaryText),
          displaySmall: const TextStyle().s12.small.darkColor,
          headlineSmall: const TextStyle().s18.bold.darkColor,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.dark,
        ));

    return GetMaterialApp(
      title: 'My App',
      darkTheme: darkTheme,
      theme: lightThime,
      themeMode: ThemeMode.system,
      initialRoute: Routes.initialRoute,
      getPages: Pages.getPages,
    );
  }
}
