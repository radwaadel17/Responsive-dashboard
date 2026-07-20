import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/drawer-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-list-tile.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/drawer-items-list.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/list-tile-user-info.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTileUserInfo(
                img: Assets.imagesProfilePhoto3,
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com',
              ),
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                CustomListTile(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesSetting,
                    title: 'Settings',
                  ),
                ),
                CustomListTile(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
