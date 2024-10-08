import 'package:flutter/material.dart';
import 'package:trendify/core/utils/app_styles.dart';

import '../../../core/utils/app_colors.dart';

class JoinOrNotJoinText extends StatelessWidget {
  const JoinOrNotJoinText({super.key, required this.text, required this.text2, this.onTap});
  final String text ;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text , style: AppStyles.greyParagraph15,),
        const SizedBox(width: 4,),
        GestureDetector(
          onTap: onTap,
            child: Text(text2, style: const TextStyle(color: AppColors.kPrimaryColor),)),
      ],
    );
  }
}
