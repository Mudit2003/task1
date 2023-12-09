import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class UnderlinedTextButton extends StatelessWidget {
  final String text;
  final double size;
  // final Color color;
  // final FontWeight fontWeight;
  // final void Function() onPressed;

  const UnderlinedTextButton({
    super.key,
    required this.text,
    required this.size,
    // required this.color,
    // required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.redTextColor,
          fontSize: AppDimensions.smallTextSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.redTextColor,
        ),
      ),
      onTap: () {},
    );
  }
}
