import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/size-config.dart';

abstract class AppStyles {
  static TextStyle regular12White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle regular14White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle regular16White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle semiBold16White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle medium16White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle medium20White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle semiBold20White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle semiBold24White(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle medium16LightBlue(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle medium20LightBlue(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xFF4EB7F2),
    );
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(
      lowerLimit,
      upperLimit,
    );
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}