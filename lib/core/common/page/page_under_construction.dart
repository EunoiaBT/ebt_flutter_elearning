import 'package:ebt_flutter_elearning/core/common/widget/gradient_background.dart';
import 'package:ebt_flutter_elearning/core/constants/ebt_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GradientBackground(
        child: Center(
          child: Lottie.asset(
            EbtImage.pageUnderConstruction,
          ),
        ),
      ),
    );
  }
}
