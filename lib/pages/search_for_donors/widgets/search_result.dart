import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/services/cloud_services.dart';
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
            child: FutureBuilder(
              future: CloudService().getAllUser(),
              builder: (context, snapshot) {
                final Iterable<Person> list = snapshot.data ?? [];
                return ListView.builder(
                  itemBuilder: (context, index) => Container(
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
                                list.elementAt(index).name,
                                style: TextStyle(
                                  color: AppColors.blackTextColor1,
                                  fontSize: AppDimensions.mediumTextSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SmallText(
                                text:
                                    "${2023 - list.elementAt(index).date.toDate().year} years old",
                              ),
                              const LocationText(location: "Bandra Mumbai"),
                            ],
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Availability(
                                  available: list
                                      .elementAt(index)
                                      .isAvailableForDonation),
                              RegularText(
                                size: AppDimensions.largeTextSize,
                                text: list.elementAt(index).bloodType,
                                color: AppColors.redIconColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                  itemCount: list.length,
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
