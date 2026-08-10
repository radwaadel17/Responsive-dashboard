import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';
import 'package:responsiveapp/core/utils/text-styles.dart';
import 'package:responsiveapp/features/dash-board/presentation/models/pie-chart-model.dart';

class DetailedPieChart extends StatefulWidget {
  const DetailedPieChart({super.key});

  @override
  State<DetailedPieChart> createState() => _DetailedPieChartState();
}

class _DetailedPieChartState extends State<DetailedPieChart> {
  List<PieChartModel> pieChartData = [
    PieChartModel(
      title: 'Design service',
      percentage: '40%',
      color: AppColors.darkBlue,
      textStyle: AppStyles.regular16White.copyWith(color: AppColors.primaryColor),
      titlePositionPercentageOffset : 1.5
    ),
    PieChartModel(
      title: 'Design product',
      percentage: '25%',
      color: AppColors.buleColor,
      textStyle: AppStyles.regular16White.copyWith(color: AppColors.primaryColor),
      titlePositionPercentageOffset : 1.5
    ),
    PieChartModel(
      title: 'Product royalty',
      percentage: '20%',
      color: AppColors.primaryColor,
      textStyle: AppStyles.regular16White.copyWith(color: AppColors.primaryColor),
      titlePositionPercentageOffset : 1.3
    ),
    PieChartModel(
      title: 'Other',
      percentage: '15%',
      color: Color(0xffE2DECD),
      textStyle: AppStyles.regular16White.copyWith(color: AppColors.primaryColor),
      titlePositionPercentageOffset : 1.5
    ),
  ];
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (event, response) {
            if (response!.touchedSection != null) {
              touchedIndex = response.touchedSection!.touchedSectionIndex;
              setState(() {});
            } else {
              setState(() {
                touchedIndex = -1;
              });
            }
          },
        ),
        sectionsSpace: 0,
        sections: List.generate(pieChartData.length, (index) {
          return PieChartSectionData(
            titlePositionPercentageOffset: touchedIndex == index ? pieChartData[index].titlePositionPercentageOffset : null,
            color: pieChartData[index].color,
            value: double.parse(
              pieChartData[index].percentage.replaceAll('%', ''),
            ),
            title:  touchedIndex == index ? pieChartData[index].title :  pieChartData[index].percentage,
            titleStyle:touchedIndex == index ?  pieChartData[index].textStyle : AppStyles.regular16White,
            radius: touchedIndex == index ? 60 : 50,

          );
        }),
      ),
    );
  }
}
