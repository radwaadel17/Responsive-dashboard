import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-model.dart';

class ActiveListTileItem extends StatelessWidget {
  const ActiveListTileItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        trailing: Container(width: 4, height: 24, color: AppColors.buleColor),
        leading: SvgPicture.asset(drawerItemModel.icon, fit: BoxFit.contain),
        title: Text(
          drawerItemModel.title,
          style: AppStyles.semiBold16White.copyWith(
            color: AppColors.buleColor,
          ),
        ),
      ),
    );
  }
}
