import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/all-expenses.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: CustomDrawer()), 
      Expanded(
        flex: 1,
        child: AllExpensesWidget())
        
    ],);
  }
}
