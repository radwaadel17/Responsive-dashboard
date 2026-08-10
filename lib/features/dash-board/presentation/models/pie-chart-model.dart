import 'package:flutter/material.dart';

class PieChartModel {
  final String? title;
  final String percentage;
  final Color color;
  final TextStyle? textStyle;
  final double? titlePositionPercentageOffset;
  PieChartModel({
    this.titlePositionPercentageOffset,
    this.title,
    required this.percentage,
    required this.color,
    this.textStyle,
  });
}
