// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsiveapp/core/widgets/adaptive-layout.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/desktop-layout.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/mobile-layout.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/tablet-layout.dart';

class ResponsiveDashBoardViewBody extends StatelessWidget {
  const ResponsiveDashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdabtiveLayout(
      desktopLayout: (context) => DesktopLayout(),
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
    ); 
  }
}


