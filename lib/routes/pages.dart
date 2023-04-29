import 'package:dalilee_pos/routes/routes.dart';
import 'package:dalilee_pos/views/auth/login/login_screen.dart';
import 'package:dalilee_pos/views/auth/reset_password/reset_password_screen.dart';
import 'package:dalilee_pos/views/auth/signup/signup_screen.dart';
import 'package:dalilee_pos/views/product/add_product/add_prodcuct_screen.dart';
import 'package:dalilee_pos/views/product/show_product/select_product_screen.dart';
import 'package:dalilee_pos/views/dashboard/dashboard.dart';
import 'package:get/get.dart';

import '../views/splash/splash_screen.dart';
import 'bindings/add_prodcut_binding.dart';
import 'bindings/auth_binding.dart';
import 'bindings/dashboard_binding.dart';
import 'bindings/select_product_binding.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: Routes.initialRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignupScreen(),
      // binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.reset,
      page: () => const ResetPasswordScreen(),
      // binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const Dashboard(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.selectProdut,
      page: () => const SelectProduct(),
      binding: SelectProductBinding(),
    ),
    GetPage(
      name: Routes.addProduct,
      page: () => const AddProductScreen(),
      binding: AddProdcutBinding(),
    ),
  ];
}
