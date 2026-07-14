import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/responsive-dashboard-view-body.dart';

class ResponsiveDashBoardView extends StatelessWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveDashBoardViewBody(),
    );
  }
}