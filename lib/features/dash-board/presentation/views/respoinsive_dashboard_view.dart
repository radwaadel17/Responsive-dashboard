import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-drawer.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/responsive-dashboard-view-body.dart';

class ResponsiveDashBoardView extends StatefulWidget {
  const ResponsiveDashBoardView({super.key});

  @override
  State<ResponsiveDashBoardView> createState() => _ResponsiveDashBoardViewState();
}

class _ResponsiveDashBoardViewState extends State<ResponsiveDashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    bool  isMobile = MediaQuery.of(context).size.width < 800 ;
    print("isMobile : ${MediaQuery.of(context).size.width}");
    return Scaffold(
      key: scaffoldKey,
      appBar: isMobile ? AppBar(
         toolbarHeight: 48,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        }, icon: Icon(Icons.menu , color: AppColors.primaryColor,),),
      ) : null,
      backgroundColor: AppColors.whiteColor,
      drawer: CustomDrawer(),
      body: ResponsiveDashBoardViewBody(),
    );
  }
}