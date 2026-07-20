import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/latest-transaction-list.dart';
class LatestTranscationSection extends StatelessWidget {
  const LatestTranscationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.medium16White.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        LatestTransactionList() 
      ],
    );
  }
}

