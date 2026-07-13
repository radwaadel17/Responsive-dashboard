import 'package:responsiveapp/core/utils/assets.dart';

class DrawerItemModel{
  final String title;
  final String icon;
  const DrawerItemModel({required this.title,required this.icon});
}
final List<DrawerItemModel> listItems = const [
    DrawerItemModel(icon: Assets.imagesDashboardIcon, title: 'Dashboard'),
    DrawerItemModel(
      icon: Assets.imagesMyTRansactionIcon,
      title: 'My Transaction',
    ),
    DrawerItemModel(icon: Assets.imagesStatisticsIcon, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletIcon, title: 'Wallet Account'),
    DrawerItemModel(
      icon: Assets.imagesInvestmentsIcon,
      title: 'My Investments',
    ),
  ];