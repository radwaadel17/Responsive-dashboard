import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/row-expenses-containers.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                children: [AllExpensesHeader(), 
                SizedBox(height: 20),
                RowExpensesContainers()],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
