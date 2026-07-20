import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/quick-invoice-widget.dart';

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
          Expanded(
            flex: 2,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: AllExpensesWidget()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: QuikInvoice()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
