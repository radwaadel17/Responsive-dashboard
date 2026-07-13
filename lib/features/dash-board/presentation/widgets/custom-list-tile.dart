import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.title, required this.img,
  });
  final String title ;
  final String img ; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 20),
      child: ListTile(
        leading: SvgPicture.asset(img),
        title: Text(title , style: AppStyles.regular16White.copyWith(color: AppColors.primaryColor)),
      ),
    );
  }
}
