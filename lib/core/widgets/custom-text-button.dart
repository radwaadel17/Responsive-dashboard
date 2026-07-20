import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.color, required this.txt});
  final Color color ; 
  final String txt ; 


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        height: 62,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:  color,
      
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(
            txt,
            style: AppStyles.semiBold16White.copyWith(
              color: color == Colors.white ? AppColors.buleColor : AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
