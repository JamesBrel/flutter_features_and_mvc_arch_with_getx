import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/constants/lang_const.dart';
import '../../../utils/constants/string_const.dart';
import '../configs/update_instance.dart';

class DownloadNewUpdatesRequest {
  DownloadNewUpdatesRequest._();

  static Future<void> downloadTheUpdates() async {
    Get.defaultDialog(
      title: '',
      middleText: Lang.updateIsDownloading.tr,
      titleStyle: TextStyle(fontSize: 15.0.sp),
      middleTextStyle: TextStyle(fontSize: 15.0.sp),
      radius: 8.0.w,
      contentPadding: const EdgeInsets.all(25),
    );

    await Future.wait([
      shorebirdCodePush.downloadUpdateIfAvailable(),
      Future<void>.delayed(const Duration(milliseconds: 300)),
    ]);

    var _isUpdateReadyToInstall =
        await shorebirdCodePush.isNewPatchReadyToInstall();

    Get.back();
    if (_isUpdateReadyToInstall) {
      Get.snackbar(
        appName,
        Lang.restartApp.tr,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.defaultDialog(
        title: '',
        middleText: Lang.reDownloadItPlease.tr,
        titleStyle: TextStyle(fontSize: 15.0.sp),
        middleTextStyle: TextStyle(fontSize: 15.0.sp),
        radius: 8.0.w,
        contentPadding: const EdgeInsets.all(25),
        onConfirm: () {
          Get.back();
          DownloadNewUpdatesRequest.downloadTheUpdates();
        },
      );
    }
  }
}
