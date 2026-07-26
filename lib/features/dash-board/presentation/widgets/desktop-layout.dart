import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-quick-invoice-section.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 2, child: CustomDrawer()),
          SizedBox(width: 20),
          Expanded(flex: 5, child: AllExpensesAndQuickInvoiceSection()),
          SizedBox(width: 20),
          Expanded(flex: 3, child: MyCardSection()),
        ],
      ),
    );
  }
}
