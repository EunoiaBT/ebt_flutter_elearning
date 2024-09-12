import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';

class EbtLoader {
  EbtLoader._();

  static void showLoading() {
    EasyLoading.show(
      indicator: const CircularProgressIndicator(
          // backgroundColor: GfxColor.primary,
          // color: GfxColor.white,
          ),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );
  }

  static void dismissLoading() {
    EasyLoading.dismiss();
  }
}
