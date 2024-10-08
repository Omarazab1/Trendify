import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

SnackBar buildSnackBar({required String message}) {
  return  SnackBar(
    content: Center(child: Text(message)),
    duration: const Duration(seconds: 2),
    backgroundColor: AppColors.kLightGreyColor,
  );
}
