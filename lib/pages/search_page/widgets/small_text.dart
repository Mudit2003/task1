import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.blackTextColor1.withOpacity(0.5),
        fontFamily: 'Poppins',
        fontSize: AppDimensions.verySmallTextSize,
      ),
    );
  }
}
