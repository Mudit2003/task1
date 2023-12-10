import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/button_size_text.dart';
import 'package:task1/common/widgets/heading_text.dart';
import 'package:task1/common/widgets/image_circle.dart';
import 'package:task1/common/widgets/location_text_widget.dart';
import 'package:task1/pages/search_for_donors/widgets/availability.dart';
import 'package:task1/pages/search_page/widgets/small_text.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.maxUsableWidth,
      // height: AppDimensions.doubleTileContainerHeight * 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeadingText(
            text: "search results",
            size: AppDimensions.buttonTextSize,
          ),
          SizedBox(
            height: AppDimensions.verticalSpace1,
          ),
          Container(
            width: AppDimensions.maxUsableWidth,
            height: AppDimensions.searchScrollViewHeight,
            child: ListView.builder(
              itemBuilder: (index, context) => Container(
                height: AppDimensions.searchResultTileHeight,
                width: AppDimensions.maxUsableWidth,
                padding: AppDimensions.widgetPadding,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: AppColors.greyTextColor2,
                  width: AppDimensions.circularBorderWidth / 6,
                ))),
                // height: AppDimensions.singleTileContainerHeight,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ImageCircle(imageRadius: 45),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rahul Sen',
                            style: TextStyle(
                              color: AppColors.blackTextColor1,
                              fontSize: AppDimensions.mediumTextSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SmallText(text: "25 Years old"),
                          const LocationText(location: "Bandra Mumbai"),
                        ],
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Availability(available: false),
                          RegularText(
                            size: AppDimensions.largeTextSize,
                            text: "AB+",
                            color: AppColors.redIconColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
              itemCount: 6,
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
