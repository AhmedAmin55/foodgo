import 'package:depi_task3/constants/app_texts.dart';
import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return ListTile(
      title: Text(
        AppTexts.foodgo,
        style: AppTextsStyle.lobsterRegular40(context),
      ),
      subtitle: Text(
        AppTexts.orderYourFavouriteFood,
        style: AppTextsStyle.poppinsMedium18(context),
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: Container(
          width: width * 0.15,
          height: width * 0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/me.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
