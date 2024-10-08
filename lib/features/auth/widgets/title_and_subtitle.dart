import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class TitleAndSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleAndSubtitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.darkBlueBold26,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subtitle,
          style: AppStyles.greyParagraph15,
          ),
      ],
    );
  }
}
