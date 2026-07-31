import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/appColors.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            color: AppColors.darkBlue,
            value: 40,
            radius: 20,
          ),
          PieChartSectionData(
            showTitle: false,
            color: AppColors.buleColor,
            value: 25,
            radius: 20,
          ),
          PieChartSectionData(
            showTitle: false,
            color: AppColors.primaryColor,
            value: 20,
            radius: 20,
          ),
          PieChartSectionData(
            showTitle: false,
            color: Color(0xffE2DECD),
            value: 60,
            radius: 20,
          ),
        ],
      ),
    );
  }
}
