import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.semiBold20White.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: BoxBorder.all(color: Color(0xffF1F1F1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Monthly',
                  style: AppStyles.medium16LightBlue.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.keyboard_arrow_down, color: AppColors.primaryColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
