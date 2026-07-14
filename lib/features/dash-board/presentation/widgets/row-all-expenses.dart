import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';

class RowAllExpenses extends StatelessWidget {
  const RowAllExpenses({super.key, required this.image, required this.isBlue});

  final String image;
  final bool isBlue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: isBlue == false
                ? AppColors.whiteColor
                : AppColors.whiteColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: FittedBox(
              child: SvgPicture.asset(
                image,
                fit: BoxFit.contain,
                color: isBlue ? AppColors.whiteColor : AppColors.buleColor,
              ),
            ),
          ),
        ),
        Spacer(),
        FittedBox(
          child: Icon(
            Icons.chevron_right,
            color: isBlue ? AppColors.whiteColor : AppColors.primaryColor,
            size: 24,
          ),
        ),
      ],
    );
  }
}
