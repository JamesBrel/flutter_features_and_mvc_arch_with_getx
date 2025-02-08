import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/constants/lang_const.dart';
import '../configs/update_instance.dart';
import 'download_new_updates_request.dart';

class CheckNewUpdatesRequest {
  CheckNewUpdatesRequest._();

  static Future<void> checkTheUpdates() async {
    var isUpdateAvailable =
        await shorebirdCodePush.isNewPatchAvailableForDownload();
    if (isUpdateAvailable) {
      Get.defaultDialog(
        title: '',
        middleText: Lang.updateAvailable.tr,
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
