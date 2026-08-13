import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/assets.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/card-model.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.cardModel});
 final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/waves.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
            color: AppColors.buleColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ListTile(
                  title: Text(cardModel.title, style: AppStyles.regular16White(context)),
                  subtitle: Text(cardModel.subtitle, style: AppStyles.medium20White(context)),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
              ),
             
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FittedBox(
                        child: Text(
                          cardModel.cardNum,
                          style: AppStyles.semiBold24White(context),
                        ),
                      ),
                      
                      FittedBox(child: Text(cardModel.validDate, style: AppStyles.regular16White(context))),
                      Flexible(child: SizedBox(height: 8,)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
