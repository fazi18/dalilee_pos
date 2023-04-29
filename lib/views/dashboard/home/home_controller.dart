import 'package:dalilee_pos/core/images.dart';
import 'package:get/get.dart';

import '../../../models/home_menu_item.dart';
import '../../../routes/routes.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final menuItems = [
    HomeMenuItem(0, 'POS', AppImages.icCashier),
    HomeMenuItem(1, 'New Order', AppImages.icPaynew),
    HomeMenuItem(2, 'Wholesale', AppImages.icWholesale),
    HomeMenuItem(3, 'Expense', AppImages.icFinancial),
    HomeMenuItem(4, 'Transactions', AppImages.icSeo),
    HomeMenuItem(5, 'Manage Order', AppImages.icChecklist),
    HomeMenuItem(6, 'Manage Debts', AppImages.icBill),
    HomeMenuItem(7, 'Print labels', AppImages.icPrinter),
    HomeMenuItem(8, 'Manage Stock', AppImages.icStorage),
    HomeMenuItem(9, 'Sales Return', AppImages.icBillboards),
    HomeMenuItem(10, 'Add On', AppImages.icWebpage),
    HomeMenuItem(11, 'Other Menu', AppImages.icMenu),
  ];

  final otherMenuItems = [
    HomeMenuItem(12, 'Report', AppImages.icAnalysis),
    HomeMenuItem(13, 'Management', AppImages.icManagement),
    HomeMenuItem(14, 'Daily Report', AppImages.icDailyreport),
    HomeMenuItem(15, 'Sumary Report', AppImages.icComputer),
    HomeMenuItem(16, 'QR Code', AppImages.icQr),
    HomeMenuItem(17, 'Shift', AppImages.icPersonnel),
    HomeMenuItem(18, 'Afiliate', AppImages.icConnection),
    HomeMenuItem(19, '', AppImages.icConnection),
  ];

  onItemTap(int id) {
    switch (id) {
      case 0:
        Get.toNamed(Routes.selectProdut);
        break;
    }
  }
}
