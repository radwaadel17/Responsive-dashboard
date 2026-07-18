import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/row-expenses-containers.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 20),
          RowExpensesContainers(),
        ],
      ),
    );
  }
}


