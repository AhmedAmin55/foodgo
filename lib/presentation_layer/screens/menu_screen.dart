import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:depi_task3/constants/app_colors.dart';
import 'package:depi_task3/constants/app_texts.dart';
import 'package:depi_task3/presentation_layer/widgets/all_items_builder.dart';
import 'package:depi_task3/presentation_layer/widgets/custom_listtile.dart';
import 'package:depi_task3/presentation_layer/widgets/item.dart';
import 'package:depi_task3/presentation_layer/widgets/search_and_filter.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../widgets/custom_tab.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
        child: Column(
          children: [
            CustomListtile(),
            SizedBox(height: 40),
            SearchAndFilter(),
            SizedBox(height: 40),
            Container(
              height: height * 0.06,
              width: width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  physics: BouncingScrollPhysics(),
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(left: 0, right: 0),
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(),
                  indicatorColor: Colors.transparent,
                  controller: tabController,
                  tabs: [
                    CustomTab(
                      title: AppTexts.all,
                      index: 0,
                      tabController: tabController,
                    ),
                    CustomTab(
                      title: AppTexts.classic,
                      index: 1,
                      tabController: tabController,
                    ),
                    CustomTab(
                      title: AppTexts.combos,
                      index: 2,
                      tabController: tabController,
                    ),
                    CustomTab(
                      title: AppTexts.sliders,
                      index: 3,
                      tabController: tabController,
                    ),
                    CustomTab(
                      title: AppTexts.pizza,
                      index: 5,
                      tabController: tabController,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.white,
                width: width,
                //  height: height*0.70,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    AllItemsBuilder(),
                    Text("bbbbbbbbbbbbbbbb"),
                    Text("cccccccccccccccc"),
                    Text("dddddddddddddddd"),
                    Text("pppppppppppppppp"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //
      // floatingActionButton: SizedBox(
      //   width: 80,
      //   height: 80,
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadiusGeometry.circular(50),
      //     ),
      //
      //     backgroundColor: AppColors.red,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        backgroundColor: Colors.transparent,
        color: AppColors.red,
        items: <Widget>[
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Image.asset("assets/images/home_icon.png", width: 25),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Image.asset("assets/images/profile_icon.png", width: 20),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Image.asset("assets/images/plus_icon.png", width: 25),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Image.asset("assets/images/chat_icon.png", width: 25),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Image.asset("assets/images/favorite_icon.png", width: 25),
            ),
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
