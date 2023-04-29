import 'package:dalilee_pos/core/images.dart';
import 'package:dalilee_pos/core/size.dart';
import 'package:dalilee_pos/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeTopView extends StatelessWidget {
  const HomeTopView({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(flex: 6, child: UserDetail()),
        addWidth(10),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              const TransactionDetail(),
              addHeight(10),
              const OrderDetail(),
            ],
          ),
        ),
      ],
    );
  }
}

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [AppColors.primery, AppColors.primeryLight],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'tasheel',
                style: tt.titleSmall?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.accentLight,
                child: Image.asset(AppImages.icUser),
              ),
            ],
          ),
          addHeight(5),
          Text(
            'Muscat',
            style: tt.bodySmall?.copyWith(color: AppColors.white),
          ),
          Text(
            '788888888 - T1',
            style: tt.bodySmall?.copyWith(color: AppColors.white),
          ),
          const Divider(color: AppColors.white),
          addHeight(8),
          Text(
            'Total Sales',
            style: tt.titleSmall
                ?.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'OMR' ' 394.3',
                style: tt.bodySmall?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              const CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          gradient: LinearGradient(
            colors: [Color(0xff46BAED), Color(0xff2196F3)],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Transaction',
              style: tt.bodySmall?.copyWith(color: AppColors.white),
            ),
            Text(
              '(This month)',
              style: tt.bodySmall?.copyWith(color: AppColors.white),
            ),
            addHeight(5),
            Text(
              '0',
              style: tt.bodySmall?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDetail extends StatelessWidget {
  const OrderDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [Color(0xff46BAED), Color(0xff2196F3)],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Order',
            style: tt.bodySmall?.copyWith(color: AppColors.white),
          ),
          Text(
            '(This month)',
            style: tt.bodySmall?.copyWith(color: AppColors.white),
          ),
          addHeight(8),
          Text(
            '0',
            style: tt.bodySmall
                ?.copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
