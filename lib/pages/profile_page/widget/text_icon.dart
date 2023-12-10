import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/button_size_text.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final String label;
  const TextIcon({
    super.key,
    required this.text,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: ShapeDecoration(
            color: AppColors.redIconColor,
            shape: OvalBorder(),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.whiteFillColor1,
                fontFamily: 'Poppins',
                fontSize: AppDimensions.largeTextSize,
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppDimensions.verticalSpace2 / 2,
        ),
        RegularText(
          text: label,
          color: AppColors.blackTextColor1,
          size: AppDimensions.smallTextSize,
        )
      ],
    );
  }
}
