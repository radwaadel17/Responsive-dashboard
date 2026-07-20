import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/core/widgets/custom-text-button.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/latest-transaction-list.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/quick-invoice-form-section.dart';

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
        LatestTransactionList(),
        Divider(height: 48, color: Color(0xffF1F1F1)),
        Row(
          children: [
            Expanded(
              child: QuickInvoceFormSection(
                txtHeader: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            Expanded(
              child: QuickInvoceFormSection(
                txtHeader: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: QuickInvoceFormSection(
                txtHeader: 'Item name',
                hintText: 'Type Item name',
              ),
            ),
            Expanded(
              child: QuickInvoceFormSection(
                txtHeader: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(
                color: Colors.white,
                txt: 'Add more details',
              ),
            ),
            Expanded(
              child: CustomTextButton(
                color: AppColors.buleColor,
                txt: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
