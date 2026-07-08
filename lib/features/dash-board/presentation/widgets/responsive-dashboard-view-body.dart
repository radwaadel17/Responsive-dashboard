// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/adaptive-layout.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/desktop-layout.dart';

class ResponsiveDashBoardViewBody extends StatelessWidget {
  const ResponsiveDashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdabtiveLayout(
      desktopLayout: (context) => DesktopLayout(),
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),
    ); 
  }
}


