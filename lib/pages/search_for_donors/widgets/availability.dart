import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/button_size_text.dart';

class Availability extends StatelessWidget {
  final bool available;
  const Availability({super.key, required this.available});

  @override
  Widget build(BuildContext context) {
    return available
        ? RegularText(
            text: "AVAILABLE",
            color: AppColors.greenTextColor,
            size: AppDimensions.buttonTextSize,
          )
        : Container(
            // width: AppDimensions.customTextButtonWidth,
            // height: AppDimensions.verticalSpace2,
            decoration: BoxDecoration(
                color: AppColors.redIconColor.withOpacity(0.25),
                borderRadius: BorderRadius.circular(AppDimensions.radius3)),
            child: Center(
              child: RegularText(
                text: "UNAVAILABLE",
                size: AppDimensions.buttonTextSize,
                color: AppColors.redTextColor,
              ),
            ),
          );
  }
}
