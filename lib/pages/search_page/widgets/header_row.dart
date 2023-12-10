import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/large_text.dart';
import 'package:task1/pages/search_page/widgets/image_circle.dart';
import 'package:task1/pages/search_page/widgets/underlined_text_button.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    print(
        "Header rebuilt ${AppDimensions.circularContainerHeight1} , ${AppDimensions.screenHeight}");

    return Container(
      height: AppDimensions.circularContainerHeight1 * 14 / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageCircle(
                imageRadius: AppDimensions.circularContainerHeight1,
              ),
              SizedBox(width: AppDimensions.horizontalSpace1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LargeSemiBoldText(
                    text: "Hello Mudit!",
                  ),
                  UnderlinedTextButton(
                      size: AppDimensions.smallTextSize,
                      text: "Complete your profile to donate blood "),
                ],
              ),
            ],
          ),
          Icon(
            Icons.notifications,
            color: AppColors.redIconColor,
            size: AppDimensions.iconSize2,
          ),
        ],
      ),
    );
  }
}
