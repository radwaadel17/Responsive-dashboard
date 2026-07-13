import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-list-tile.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/drawer-items-list.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/list-tile-user-info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height:20),
          ListTileUserInfo(
            img: Assets.imagesProfilePhoto3,
            name: 'Lekan Okeowo',
            email: 'demo@gmail.com',
          ),
          DrawerItemListView(),
          Spacer(),
          CustomListTile(title: 'Setting system', img: Assets.imagesSetting),
          CustomListTile(title: 'Logout account', img: Assets.imagesLogout),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

