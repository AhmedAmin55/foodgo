import 'package:depi_task3/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTexts {
  static const String foodgo = "Foodgo";
  static const String search = "Search";
  static const String all = "All";
  static const String combos = "Combos";
  static const String sliders = "Sliders";
  static const String classic = "Classic";
  static const String orderYourFavouriteFood = "Order your favourite food!";
}

class AppTextsStyle {
  static TextStyle lobsterRegular60(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 80),
      fontFamily: "Lobster",
      color: AppColors.white,
    );
  }

  static TextStyle lobsterRegular40(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 40),
      fontFamily: "Lobster",
      color: AppColors.brown,
    );
  }

  static TextStyle poppinsMedium18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 18),
      fontFamily: "Poppins",
      color: Color(0xff6A6A6A),
    );
  }

  static TextStyle robotoMedium22(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 22),
      fontFamily: "Roboto",
      color: Color(0xff3C2F2F),
    );
  }

  static TextStyle interMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveTextsize(context, baseFontsize: 20),
      fontWeight: FontWeight.bold,
      fontFamily: "Inter",
      color: AppColors.brown,
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
