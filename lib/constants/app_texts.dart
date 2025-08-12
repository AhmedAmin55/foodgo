import 'package:depi_task3/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTexts {
  static const String foodgo = "Foodgo";
}

class AppTextsStyle {
  static TextStyle lobsterRegular60(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 80),
      fontFamily: "Lobster",
      color: AppColors.white,
    );
  }
}

double getResponsiveTextsize(
  BuildContext context, {
  required double baseFontsize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontsize = scaleFactor * baseFontsize;
  double lowerLimit = baseFontsize * 0.8;
  double upperLimit = baseFontsize * 1.2;

  return responsiveFontsize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= 600) {
    return width / 560;
  }
  if (width > 600 && width <= 1100) {
    return width / 1050;
  } else {
    return width / 1900;
  }
}
