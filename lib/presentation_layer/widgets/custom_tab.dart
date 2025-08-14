import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.title,
    required this.index,
    required this.tabController,
  });

  final String title;
  final int index;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    bool isSelected = tabController.index == index;

    return SizedBox(
      height: height * 0.056,
      width: isSelected ? width * 0.19 : width * 0.21,
      child: Card(
        elevation: isSelected ? 3 : 0,
        color: isSelected ? AppColors.red : AppColors.tabBackground,
        child: Center(
          child: Text(
            title,
            style: isSelected
                ? AppTextsStyle.interMedium20(
                    context,
                  ).copyWith(color: AppColors.white)
                : AppTextsStyle.interMedium20(context),
          ),
        ),
      ),
    );
  }
}
