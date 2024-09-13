import 'package:ebt_flutter_elearning/core/constants/ebt_welcome_page.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/widgets/navigation_dot.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/widgets/next_button.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/widgets/page_builder.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: cubit.pageController,
            onPageChanged: (index) => cubit.updatePageIndicator(index),
            itemCount: welcomePages.length,
            itemBuilder: (context, index) {
              final content = welcomePages[index];
              return PageBuilder(
                image: content.image,
                titleLeft: content.titleLeft,
                titleCenter: content.titleCenter,
                titleRight: content.titleRight,
                subTitle: content.subTitle,
              );
            },
          ),
          SkipButton(),
          NavigationDot(count: welcomePages.length),
          NextButton(),
        ],
      ),
    );
  }
}
