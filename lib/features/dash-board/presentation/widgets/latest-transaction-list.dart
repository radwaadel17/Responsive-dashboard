import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/user-info-model.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/list-tile-user-info.dart';

class LatestTransactionList extends StatefulWidget {
  const LatestTransactionList({super.key});

  @override
  State<LatestTransactionList> createState() => _LatestTransactionListState();
}

class _LatestTransactionListState extends State<LatestTransactionList> {
  List<UserInfoModel> userInfos = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      img: Assets.imagesProfilePhoto3,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      img: Assets.imagesProfilePhoto3,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'mehmet@.com',
      img: Assets.imagesProfilePhoto3,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'mehmet@.com',
      img: Assets.imagesProfilePhoto3,
    ),
     UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      img: Assets.imagesProfilePhoto1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:  EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfos.map((e) => IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.only(right: 20 , top: 10),
            child: ListTileUserInfo(
              name: e.name, email: e.email, img: e.img,),
          ),
        )).toList(),
      ),
    );
  }
}
