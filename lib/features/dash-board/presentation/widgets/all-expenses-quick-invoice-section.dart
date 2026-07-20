import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/quick-invoice-widget.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AllExpensesWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: QuikInvoice()),
        ],
      ),
    );
  }
}