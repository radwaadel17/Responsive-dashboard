import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/all-expenses-item-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-item-content.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, this.onTap, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final Function()? onTap  ; 
  final bool isActive ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isActive ? AppColors.buleColor : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: BoxBorder.all(color:  Color(0xffF1F1F1)),
        ),
        child: AllExpensesItemContent(
          allExpensesItemModel: allExpensesItemModel, isActive: isActive,),
      ),
    );
  }
}
