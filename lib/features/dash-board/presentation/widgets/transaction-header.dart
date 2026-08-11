import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.semiBold20White(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          'See all',
          style: AppStyles.regular16White(context).copyWith(color: AppColors.buleColor),
        ),
      ],
    );
  }
}
