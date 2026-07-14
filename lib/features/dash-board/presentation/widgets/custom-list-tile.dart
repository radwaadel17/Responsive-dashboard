import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, this.onTap, required this.drawerItemModel, 
  });
  final DrawerItemModel  drawerItemModel ; 
  final Function()? onTap; 
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap , 
      child: Padding(
        padding: const EdgeInsets.only(top : 20),
        child: ListTile(
          leading: SvgPicture.asset(drawerItemModel.icon, fit: BoxFit.contain,),
          title: Text(drawerItemModel.title , style: AppStyles.regular16White.copyWith(color: AppColors.primaryColor)),
        ),
      ),
    );
  }
}


class CheckItemActive extends StatelessWidget {
  const CheckItemActive({super.key, this.onTap, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel  drawerItemModel ; 
  final Function()? onTap; 
  final bool isActive ; 

  @override
  Widget build(BuildContext context) {
    return isActive == false ? CustomListTile( drawerItemModel: drawerItemModel, onTap:onTap ,) 
    : 
    Container();
  }
}



