import 'package:ebt_flutter_elearning/core/constants/ebt_size.dart';
import 'package:ebt_flutter_elearning/core/utils/device.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: EbtSize.defaultSpace,
      bottom: EbtDevice.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          context.read<WelcomeCubit>().nextPage();
        },
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(
          CupertinoIcons.arrow_right,
        ),
      ),
    );
  }
}
