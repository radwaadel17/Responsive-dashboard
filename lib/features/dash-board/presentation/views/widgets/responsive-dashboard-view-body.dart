import 'package:flutter/material.dart';
import 'package:responsiveapp/core/adaptive-layout.dart';

class ResponsiveDashBoardViewBody extends StatelessWidget {
  const ResponsiveDashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdabtiveLayoutDash(
      desktopLayout: (context) => SizedBox(),
      mobileLayout: (context) => SizedBox(),
      tabletLayout: (context) => SizedBox(),


    ); 
  }
}


