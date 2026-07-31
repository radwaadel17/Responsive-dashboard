import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({
    super.key,
    required this.color,
    required this.title,
    required this.percentage,
  });
  final Color color;
  final String title;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        title: Text(
          title,
          style: AppStyles.regular16White.copyWith(color: AppColors.primaryColor),
        ),
        trailing: Text(
          percentage,
          style: AppStyles.medium16White.copyWith(color: AppColors.buleColor),
        ),
      ),
    );
  }
}
