import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/custom_text_button.dart';

class CommunityBanner extends StatelessWidget {
  const CommunityBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimensions.widgetPadding,
      height: AppDimensions.communityBannerHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.radius),
        color: AppColors.whiteFillColor1,
      ),
      child: Row(
        children: [
          Container(
            height: AppDimensions.imageEllipsHeight,
            width: AppDimensions.imageEllipsWidth,
            decoration: ShapeDecoration(
              color: AppColors.lightPinkFillColor,
              image: const DecorationImage(
                  image: AssetImage("images/care_image.png")),
              shape: OvalBorder(
                  side: BorderSide(
                      width: AppDimensions.imageEllipsBorder,
                      color: AppColors.lightPinkFillColor)),
            ),
          ),
          Column(
            children: [
              Container(
                width: AppDimensions.communityTextWidth,
                child: Text(
                  'Become a part of our community',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blackTextColor2,
                    fontSize: AppDimensions.mediumTextSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              CustomTextButton(
                elevated: false,
                text: "Join",
                width: AppDimensions.customTextButtonWidth,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
