import 'package:depi_task3/constants/app_colors.dart';
import 'package:depi_task3/constants/app_texts.dart';
import 'package:flutter/material.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        // SizedBox(
        //   height: 60,
        //   width: 319,
        //   child: Card(
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(16),
        //     ),
        //     elevation: 5,
        //     color: AppColors.white,
        //     child: Padding(
        //       padding: const EdgeInsetsDirectional.fromSTEB(15, 8, 8, 8),
        //       child: TextFormField(
        //         cursorColor: AppColors.brown,
        //         decoration: InputDecoration(
        //           fillColor: AppColors.white,
        //           filled: true,
        //           border: InputBorder.none,
        //           hintText: AppTexts.search,
        //           hintStyle: AppTextsStyle.robotoMedium22(context),
        //           icon: Image.asset("assets/images/search.png", width: 25),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(height: 50,),
        Expanded(
          child: Container(
            padding: EdgeInsetsDirectional.fromSTEB(15, 5, 5, 5),
            height: width * 0.13,
            width: width * 0.78,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: TextFormField(
              cursorColor: AppColors.brown,
              decoration: InputDecoration(
                fillColor: AppColors.white,
                filled: true,
                border: InputBorder.none,
                hintText: AppTexts.search,
                hintStyle: AppTextsStyle.robotoMedium22(context),
                icon: Image.asset("assets/images/search.png", width: 25),
              ),
            ),
          ),
        ),
        SizedBox(width: 13),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsetsDirectional.all(17),
            height: width * 0.13,
            width: width * 0.13,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/images/filter.png"),
          ),
        ),
      ],
    );
  }
}
