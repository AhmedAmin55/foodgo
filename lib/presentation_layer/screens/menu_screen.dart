import 'package:depi_task3/constants/app_colors.dart';
import 'package:depi_task3/presentation_layer/widgets/custom_listtile.dart';
import 'package:depi_task3/presentation_layer/widgets/search_and_filter.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
        child: Column(
          children: [CustomListtile(), SizedBox(height: 40), SearchAndFilter()],
        ),
      ),
    );
  }
}
