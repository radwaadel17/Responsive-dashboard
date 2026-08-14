import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/size-config.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/chart-row.dart';
import 'package:responsiveapp/features/dash-board/presentation/widgets/detaild-pie-chart.dart';

class DefineWidget extends StatelessWidget {
  const DefineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    var size = SizeConfig.screenWidth; 
    print("size : $size");
    bool isErrorSize = size > SizeConfig.desktop && size <= SizeConfig.desktopError;
    return isErrorSize  ? AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: DetailedPieChart(),
      ),
    ):ChartRow(); 
  }
}
