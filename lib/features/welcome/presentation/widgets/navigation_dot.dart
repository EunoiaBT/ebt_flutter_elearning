import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:ebt_flutter_elearning/core/constants/ebt_size.dart';
import 'package:ebt_flutter_elearning/core/utils/device.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavigationDot extends StatelessWidget {
  final int count;
  const NavigationDot({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final welcomeCubit = context.read<WelcomeCubit>();
    return Positioned(
      bottom: EbtDevice.getBottomNavigationBarHeight() + 22,
      left: EbtSize.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: EbtColor.buttonSecondary,
          dotColor: EbtColor.buttonSecondary.withOpacity(0.4),
          dotHeight: 10,
        ),
        controller: welcomeCubit.pageController,
        onDotClicked: welcomeCubit.dotNavigationClick,
        count: count,
      ),
    );
  }
}
