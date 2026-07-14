import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/all-expenses-item-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/row-all-expenses.dart';

class AllExpensesItemContent extends StatelessWidget {
  const AllExpensesItemContent({super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive ; 

  @override

  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowAllExpenses(image: allExpensesItemModel.icon, isBlue: isActive,),
        SizedBox(height: 20),
        FittedBox(

          child: Text(
            allExpensesItemModel.title,
            style: AppStyles.semiBold16White.copyWith(
              color: isActive ? AppColors.whiteColor : AppColors.primaryColor,
            ),
          ),
        ),
        SizedBox(height: 5),
        FittedBox(
          child: Text(
            allExpensesItemModel.date,
            style: AppStyles.regular14White.copyWith(color:isActive ? AppColors.whiteColor : AppColors.greyColor),
          ),
        ),
        SizedBox(height: 5),
        FittedBox(
          child: Text(
            allExpensesItemModel.amount,
            style: AppStyles.semiBold24White.copyWith(color: isActive ? AppColors.whiteColor : AppColors.buleColor),
          ),
        ),
      ],
    );
  }
}

