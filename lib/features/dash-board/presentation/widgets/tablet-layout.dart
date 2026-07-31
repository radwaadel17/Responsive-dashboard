import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses-quick-invoice-tablet.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded( flex : 1 , child: CustomDrawer()),
          SizedBox(width: 20),
          Expanded(
            flex : 2  , 
            child: Column(
              children: [
                SizedBox(width: 20),
                Expanded( child: AllExpensesAndQuickInvoiceSectionTablet()),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

