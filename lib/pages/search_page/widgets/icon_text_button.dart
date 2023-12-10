import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  // final void Function() onTap;
  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.textAndIconButtonWidth,
      height: AppDimensions.textAndIconButtonHeight,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.redIconColor),
        borderRadius: BorderRadius.circular(AppDimensions.radius),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            icon,
            color: AppColors.redIconColor,
            size: AppDimensions.iconSize2,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: AppDimensions.mediumTextSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: AppColors.blackTextColor1,
            ),
          ),
        ]),
      ),
    );
  }
}
