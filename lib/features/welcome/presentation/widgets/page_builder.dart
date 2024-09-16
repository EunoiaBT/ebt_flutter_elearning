import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:ebt_flutter_elearning/core/constants/ebt_size.dart';
import 'package:ebt_flutter_elearning/core/utils/helper.dart';
import 'package:flutter/material.dart';

class PageBuilder extends StatelessWidget {
  final String image;
  final String titleLeft;
  final String titleCenter;
  final String? titleRight;
  final String subTitle;

  const PageBuilder({
    super.key,
    required this.titleLeft,
    required this.titleCenter,
    this.titleRight,
    required this.subTitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        EbtSize.defaultSpace,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: EbtHelper.screenWidth(context) * 1,
            height: EbtHelper.screenHeight(context) * 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: EbtSize.defaultSpace,
            ),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: titleLeft,
                    style: Theme.of(context).textTheme.headlineMedium,
                    children: [
                      TextSpan(
                        text: titleCenter,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: EbtColor.textSecondary),
                      ),
                      if (titleRight != null) ...[
                        TextSpan(
                          text: titleRight,
                          style: Theme.of(context).textTheme.headlineMedium!,
                        ),
                      ]
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: EbtSize.spaceItems),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
