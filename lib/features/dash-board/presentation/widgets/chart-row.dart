import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/Incomer-header.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/percentage-widget-listTile.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/pie-chart.dart';

class ChartRow extends StatelessWidget {
  const ChartRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IncomeHeader(),
        SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 1,
                child:  PieChartWidget() , 
              ),
            ),
            Expanded(

              flex: 2,
              child: Column(
                children: [
                  PercentageWidget(
                    color: Color(0xffE2DECD),
                    title: 'Other',
                    percentage: '22%',
                  ),
                  PercentageWidget(
                    color: AppColors.buleColor,
                    title: 'Design product',
                    percentage: '25%',
                  ),
                  PercentageWidget(
                    color: AppColors.primaryColor,
                    title: 'Product royalti',
                    percentage: '20%',
                  ),
                  PercentageWidget(
                    color: Color(0xffE2DECD),
                    title: 'Other',
                    percentage: '22%',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
