import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class CustomTextButton extends StatelessWidget {
  final bool elevated;
  final String text;
  final double width;
  final Color fill;
  final Color textColor;
  final void Function() onTap;

  const CustomTextButton({
    super.key,
    this.elevated = true,
    required this.text,
    required this.width,
    this.fill = AppColors.redIconColor,
    required this.onTap,
    this.textColor = AppColors.whiteFillColor1,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppDimensions.customTextButtonWidth,
        height: AppDimensions.customTextButtonHeight,
        decoration: ShapeDecoration(
          color: fill,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            AppDimensions.radius,
          )),
          shadows: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 5,
              offset: elevated ? const Offset(0, 3) : const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: AppDimensions.buttonTextSize,
            ),
          ),
        ),
      ),
    );
  }
}
