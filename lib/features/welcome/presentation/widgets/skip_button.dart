import 'package:ebt_flutter_elearning/core/utils/device.dart';
import 'package:ebt_flutter_elearning/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EbtDevice.getAppBarHeight(),
      right: 0,
      child: TextButton(
        onPressed: () {
          context.read<WelcomeCubit>().skipPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
