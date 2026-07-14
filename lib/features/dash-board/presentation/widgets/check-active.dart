import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/active-list-tile-item.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-list-tile.dart';

class CheckItemActive extends StatelessWidget {
  const CheckItemActive({
    super.key,
    this.onTap,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive == false
        ? CustomListTile(drawerItemModel: drawerItemModel, onTap: onTap)
        : ActiveListTileItem(drawerItemModel: drawerItemModel);
  }
}


