import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class MediumText extends StatelessWidget {
  final String text;
  const MediumText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(
        color: AppColors.blackTextColor1,
        fontSize: AppDimensions.buttonTextSize,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
