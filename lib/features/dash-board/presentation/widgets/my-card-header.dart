import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class MycardHeader extends StatelessWidget {
  const MycardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'My card',
          style: AppStyles.semiBold20White.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
