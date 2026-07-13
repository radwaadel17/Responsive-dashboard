import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class ListTileUserInfo extends StatelessWidget {
  const ListTileUserInfo({super.key, required this.img, required this.name, required this.email});
  final String img ;
  final String name ; 
  final String email  ; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200),
        child: ListTile(
          leading: SvgPicture.asset(img, fit: BoxFit.contain,),
          title: Text(
            name, style: AppStyles.semiBold20White.copyWith(color: AppColors.primaryColor , fontSize: 16),),
          subtitle: Text(email, style: AppStyles.regular12White.copyWith(color: AppColors.greyColor),),
        ),
      ),
    );
  }
}