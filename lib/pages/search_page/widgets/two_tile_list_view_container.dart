import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/custom_text_button.dart';
import 'package:task1/pages/search_page/widgets/image_circle.dart';
import 'package:task1/pages/search_page/widgets/location_text_widget.dart';
import 'package:task1/pages/search_page/widgets/medium_text.dart';
import 'package:task1/pages/search_page/widgets/text_and_textButton.dart';

class TwoTileListView extends StatefulWidget {
  // will take a List<Modals> as parameters and display it
  const TwoTileListView({super.key});

  @override
  State<TwoTileListView> createState() => _TwoTileListViewState();
}

class _TwoTileListViewState extends State<TwoTileListView> {
  Iterable<Person> a = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.doubleTileContainerHeight,
      child: Column(
        children: [
          const TextAndButtonRow(
            text: "Nearby Donors",
            button: "See All",
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: AppDimensions.listTileSeperationHorizontal,
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  width: AppDimensions.doubleTileContainerWidth,
                  padding: AppDimensions.widgetPadding,
                  decoration: BoxDecoration(
                      color: AppColors.whiteFillColor1,
                      borderRadius: BorderRadius.circular(AppDimensions.radius),
                      border: Border.all(
                        color: AppColors.blackTextColor1,
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              const MediumText(text: "Rahul Sen"),
                              Text(
                                "25 years old",
                                style: TextStyle(
                                  color: AppColors.blackTextColor1,
                                  fontFamily: 'Poppins',
                                  fontSize: AppDimensions.verySmallTextSize,
                                ),
                              ),
                              const LocationText(location: "Bandra, Mumbai"),
                              Text(
                                "Available",
                                style: TextStyle(
                                  color: AppColors.greenTextColor,
                                  fontSize: AppDimensions.buttonTextSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const ImageCircle(imageRadius: 42),
                              Text(
                                "AB+",
                                style: TextStyle(
                                  color: AppColors.redTextColor,
                                  fontSize: AppDimensions.buttonTextSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      CustomTextButton(
                        text: "Request",
                        width: AppDimensions.customTextButtonWidth,
                        onTap: () {},
                      )
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
