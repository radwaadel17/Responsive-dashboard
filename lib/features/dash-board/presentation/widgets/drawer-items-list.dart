import 'package:flutter/material.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-items-model.dart' as DrawerItemModel;
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-list-tile.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: DrawerItemModel.listItems.length,
      itemBuilder: (context, index) {
        return CustomListTile(
          title: DrawerItemModel.listItems[index].title,
          img: DrawerItemModel.listItems[index].icon,
        );
      },
    );
  }
}
