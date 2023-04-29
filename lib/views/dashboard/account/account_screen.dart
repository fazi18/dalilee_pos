import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import 'components/account_item_view.dart';
import 'components/account_title_view.dart';
import 'components/account_user_details.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const AccountUserDetails(),
        _buildAccountView(),
        _buildDatabaseView(),
        _buildPremiumView(),
        _buildMoreInfoView(),
        Container(
          width: double.infinity,
          height: 12,
          color: AppColors.bgGray,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Text(
            'Logout',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.vermillion),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          color: AppColors.bgGray,
          child: Center(
            child: Text(
              'v1.0.1',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }

  _buildAccountView() {
    return Column(
      children: [
        const AccountHeadlineView(text: 'Account'),
        AccountItemView(
          text: 'Change Profile',
          onTap: () {},
        ),
        _buildDivider(),
        AccountItemView(
          text: 'Change Profile',
          onTap: () {},
        ),
      ],
    );
  }

  _buildDatabaseView() {
    return Column(
      children: [
        const AccountHeadlineView(text: 'Database'),
        AccountItemView(
          text: 'Retrive data to Offline',
          onTap: () {},
        ),
        _buildDivider(),
        AccountItemView(
          text: 'Sync Database',
          onTap: () {},
          syncCount: 0,
        ),
      ],
    );
  }

  _buildPremiumView() {
    return Column(
      children: [
        const AccountHeadlineView(text: 'Premium'),
        AccountItemView(
          text: 'Upgrade To Premium',
          onTap: () {},
        ),
      ],
    );
  }

  _buildMoreInfoView() {
    return Column(
      children: [
        const AccountHeadlineView(text: 'More Information'),
        AccountItemView(
          text: 'Privacy Policy',
          onTap: () {},
        ),
        const Divider(
          thickness: 1,
        ),
        AccountItemView(
          text: 'Terms & Conditions',
          onTap: () {},
        ),
        _buildDivider(),
        AccountItemView(
          text: 'About Us',
          onTap: () {},
        ),
      ],
    );
  }

  _buildDivider() => const Divider(thickness: 1, height: 1);
}
