import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/latest-transaction-section.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTranscationSection(),
        ],
      ),
    );
  }
}

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.semiBold20White.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.add, color: AppColors.buleColor),
        ),
      ],
    );
  }
}
