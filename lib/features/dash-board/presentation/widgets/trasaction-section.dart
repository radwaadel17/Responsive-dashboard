import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/transaction-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/transaction-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/transaction-header.dart';

class TransactionSection extends StatefulWidget {
  const TransactionSection({super.key});

  @override
  State<TransactionSection> createState() => _TransactionSectionState();
}

class _TransactionSectionState extends State<TransactionSection> {
  List<TransactionModel> transactions = [
    TransactionModel(
      titile: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022 ',
      price: '\$20,129',
    ),
    TransactionModel(
      titile: 'Landing Page project',
      subtitle: '13 Apr, 2022 at 3:30 PM, ',
      price: '\$2000',
      isDeposite: true,
    ),
    TransactionModel(
      titile: 'Juni Mobile App project',
      subtitle: '13 Apr, 2022 at 3:30 PM ',
      price: '\$2000',
      isDeposite: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(height: 12),
        Text(
          '13 April 2022',
          style: AppStyles.regular16White(context).copyWith(color: AppColors.greyColor),
        ),
        SizedBox(height: 12),

        Column(
          children: transactions
              .map((e) => TransactionContainer(transactionModel: e))
              .toList(),
        ),
      ],
    );
  }
}
