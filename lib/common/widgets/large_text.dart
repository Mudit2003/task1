import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class LargeSemiBoldText extends StatelessWidget {
  final String text;
  const LargeSemiBoldText({
    super.key,
    this.text = "Hello Navya!",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.blackTextColor1,
          fontSize: AppDimensions.largeTextSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}
