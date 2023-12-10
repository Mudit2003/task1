import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/heading_text.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    var row = [
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/a_pos.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/b_pos.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/ab_pos.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/AB-.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/a_neg.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
      InkWell(
        child: Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.iconContainerWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    "icons/b_neg.png",
                  ))),
        ),
      ),
      SizedBox(
        width: AppDimensions.horizontalSpace2,
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(
          text: "Blood Type",
          size: AppDimensions.mediumTextSize,
        ),
        SizedBox(
          height: AppDimensions.verticalSpace1,
        ),
        Container(
          height: AppDimensions.iconContainerHeight,
          width: AppDimensions.maxUsableWidth,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: row,
          ),
        ),
      ],
    );
  }
}
