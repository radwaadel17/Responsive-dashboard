import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/custom-container.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/chart-row.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/my-card-page-view.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/quick-invoice-widget.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/trasaction-section.dart';

class AllExpensesAndQuickInvoiceSectionTablet extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpensesWidget()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuikInvoice()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
         SliverToBoxAdapter(
          child: CustomContainer(
            child: Column(
              children: [
                MycardHeader(),
                SizedBox(height: 12),
                MyCardPageView(),
                SizedBox(height: 12),
                Divider(height: 24, color: Color(0xffF1F1F1)),
                TransactionSection(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: CustomContainer(child: ChartRow()),
        ),
        
      ],
    );
  }
}
