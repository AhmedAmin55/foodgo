import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:depi_task3/presentation_layer/screens/menu_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_texts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (contex) {
            return MenuScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [Color(0xffFC8F97), Color(0xffEC2A38)],
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Image.asset(
                "assets/images/splash_screen_image.png",
                width: width * 0.70,
              ),
            ),
          ),
          Center(
            child: DefaultTextStyle(
              style: AppTextsStyle.lobsterRegular60(context),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText(
                    speed: Duration(milliseconds: 100),
                    AppTexts.foodgo,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
