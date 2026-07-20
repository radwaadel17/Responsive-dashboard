import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';

class QuickInvoceFormSection extends StatelessWidget {
  const QuickInvoceFormSection({
    super.key,
    required this.txtHeader,
    required this.hintText,
  });
  final String txtHeader;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtHeader,
          style: AppStyles.medium16White.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppStyles.regular16White.copyWith(color: AppColors.greyColor),
              fillColor: AppColors.whiteColor,
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
 OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.whiteColor),
    );
  }

