import 'dart:developer';

import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:dalilee_pos/views/dashboard/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bars/dashboard_app_bar.dart';
import 'account/account_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(
        title: _currentIndex == 1 ? 'Account' : 'Tasheel POS',
        elevation: _currentIndex == 1 ? 0 : 1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.icTabHome,
              height: 25,
              color: _currentIndex == 0 ? AppColors.black : null,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                AppImages.icTabAccount,
                height: 18,
                color: _currentIndex == 1
                    ? AppColors.black
                    : AppColors.accentLight,
              ),
            ),
            label: 'Account',
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        selectedLabelStyle: const TextStyle(fontSize: 11),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        iconSize: 25,
        onTap: (val) {
          log('taped $val');
          setState(() {
            _currentIndex = val;
          });
        },
        elevation: 10,
      ),
      body: screens[_currentIndex],
    );
  }
}
