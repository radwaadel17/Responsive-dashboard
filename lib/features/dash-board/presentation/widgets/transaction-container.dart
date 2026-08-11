import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/transaction-model.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              transactionModel.titile,
              style: AppStyles.semiBold16White(context).copyWith(
                color: AppColors.primaryColor,
              ),
            ),
                
            subtitle: Text(
              transactionModel.subtitle,
              style: AppStyles.regular16White(context).copyWith(
                color: AppColors.greyColor,
              ),
            ),
            trailing: Text(
              transactionModel.price,
              style: AppStyles.semiBold20White(context).copyWith(
                color: transactionModel.isDeposite
                    ? AppColors.redColor
                    : AppColors.greenColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
