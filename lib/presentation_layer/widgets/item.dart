import 'package:depi_task3/constants/app_colors.dart';
import 'package:depi_task3/constants/app_texts.dart';
import 'package:depi_task3/data_layer/models/item_model.dart';
import 'package:flutter/material.dart';

final List<ItemModel> items = [
  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
  ItemModel(
    image: "assets/images/hamburger_veggie.png",
    title: AppTexts.hamburger,
    subTitle: AppTexts.veggieBurger,
    rate: 4.8,
  ),
  ItemModel(
    image: "assets/images/hamburger_chicken.png",
    title: AppTexts.hamburger,
    subTitle: AppTexts.chickenBurger,
    rate: 4.6,
  ),

  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
  ItemModel(
    image: "assets/images/cheeseburger.png",
    title: AppTexts.cheeseburger,
    subTitle: AppTexts.wendyBurger,
    rate: 4.9,
  ),
];

class Item extends StatefulWidget {
  const Item({super.key, required this.index});

  final int index;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SizedBox(
        child: Card(
          elevation: 4,
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 11,
              left: 11,
            ),
            child: Column(
              children: [
                Flexible(child: Image.asset(items[widget.index].image, width: width * 0.27)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    items[widget.index].title,
                    style: AppTextsStyle.roboto_Bold22(context),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    items[widget.index].subTitle,
                    style: AppTextsStyle.robotoRegular20(context),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/star.png", width: width * 0.04),
                    SizedBox(width: width * 0.02),
                    Text(
                      items[widget.index].rate.toString(),
                      style: AppTextsStyle.robotoMedium22(context),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () {
                        items[widget.index].isFavorite =
                            !items[widget.index].isFavorite;
                        setState(() {});
                      },
                      child: items[widget.index].isFavorite ?
                      Image.asset(
                        "assets/images/true_favorite.png",
                        width: width * 0.06,
                      ): Image.asset(
                        "assets/images/favorite.png",
                        width: width * 0.06,
                    ),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
