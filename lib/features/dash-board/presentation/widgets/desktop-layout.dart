import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-quick-invoice-section.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/chart-row.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-transaction-section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          SizedBox(width: 20),
          Expanded(flex: 5, child: ScrollingDesktopUI()),
        ],
      ),
    );
  }
}

class ScrollingDesktopUI extends StatelessWidget {
  const ScrollingDesktopUI({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            
            children: [
              Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
              SizedBox(width: 24),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded( child: MyCardAndTransactionSection()),
                    CustomContainer(child: ChartRow()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
