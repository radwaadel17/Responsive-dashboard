import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/check-active.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});
  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int cnt = 0;
  final List<DrawerItemModel> listItems = [
    DrawerItemModel(icon: Assets.imagesDashboardIcon, title: 'Dashboard'),
    DrawerItemModel(  icon: Assets.imagesMyTRansactionIcon, title: 'My Transaction' ),
    DrawerItemModel(icon: Assets.imagesStatisticsIcon, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletIcon, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesInvestmentsIcon,title: 'My Investments',),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return CheckItemActive(
          onTap: () {
            if (cnt != index) {
              return setState(() {
                cnt = index;
              });
            }
          },
          drawerItemModel: listItems[index],
          isActive: cnt == index,
        );
      },
    );
  }
}
