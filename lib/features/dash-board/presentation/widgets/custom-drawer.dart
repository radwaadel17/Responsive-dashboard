import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/custom-list-tile.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/list-tile-user-info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20),
          ListTileUserInfo(
            img: Assets.imagesProfilePhoto1,
            name: 'Lekan Okeowo',
            email: 'demo@gmail.com',
          ),
          SizedBox(height: 10),
          CustomListTile(title: 'Dashboard', img: Assets.imagesDashboardIcon),
          CustomListTile(title: 'My Transaction', img: Assets.imagesMyTRansactionIcon),
          CustomListTile(title: 'Statistics', img: Assets.imagesStatisticsIcon),
          CustomListTile(title: 'Wallet Account', img: Assets.imagesWalletIcon),
          CustomListTile(title: 'My Investments', img: Assets.imagesInvestmentsIcon),
          Spacer(),
          CustomListTile(title: 'Setting system', img: Assets.imagesSetting),
          CustomListTile(title: 'Logout account', img: Assets.imagesLogout),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
