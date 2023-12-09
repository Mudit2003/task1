import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_page/widgets/image_circle.dart';
import 'package:task1/pages/search_page/widgets/large_bold_text.dart';
import 'package:task1/pages/search_page/widgets/location_text_widget.dart';
import 'package:task1/pages/search_page/widgets/small_text.dart';
import 'package:task1/pages/search_page/widgets/text_and_textButton.dart';

class SingleTileListView extends StatefulWidget {
  // will take a List<Modals> as parameters and display it
  const SingleTileListView({super.key});

  @override
  State<SingleTileListView> createState() => _SingleTileListViewState();
}

class _SingleTileListViewState extends State<SingleTileListView> {
  Iterable<Person> list = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.singleTileContainerHeight,
      child: Column(
        children: [
          const TextAndButtonRow(
            text: "Donation Requests",
            button: "See All",
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: AppDimensions.maxUsableWidth,
                  padding: AppDimensions.widgetPadding,
                  decoration: BoxDecoration(
                      color: AppColors.whiteFillColor1,
                      borderRadius: BorderRadius.circular(AppDimensions.radius),
                      border: Border.all(
                        color: AppColors.blackTextColor1,
                      )),
                  // height: AppDimensions.singleTileContainerHeight,
                  child: Column(children: [
                    Row(
                      children: [
                        const ImageCircle(imageRadius: 56),
                        Column(
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
                            const LocationText(location: "Bandra Mumbai"),
                            const SmallText(text: "Date:20th Jan, 2023"),
                          ],
                        ),
                        const Column(
                          children: [
                            LargeBoldText(
                              text: "AB+",
                              color: AppColors.redIconColor,
                            ),
                            SmallText(text: "Blood required"),
                          ],
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          LargeBoldText(
                            text: "Decline",
                            color: AppColors.blackTextColor1.withOpacity(0.7),
                          ),
                          const LargeBoldText(
                            text: "Accept",
                            color: AppColors.redIconColor,
                          ),
                        ],
                      ),
                    ),
                  ]),
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
