import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomDrawer(), 
    ],);
  }
}
