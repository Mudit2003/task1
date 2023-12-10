import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/services/cloud_services.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/custom_text_button.dart';
import 'package:task1/common/widgets/image_circle.dart';
import 'package:task1/common/widgets/location_text_widget.dart';
import 'package:task1/common/widgets/medium_text.dart';
import 'package:task1/pages/search_for_donors/widgets/availability.dart';
import 'package:task1/pages/search_page/widgets/text_and_textButton.dart';

class NearbyDonors extends StatefulWidget {
  // will take a List<Modals> as parameters and display it
  const NearbyDonors({super.key});

  @override
  State<NearbyDonors> createState() => _NearbyDonorsState();
}

class _NearbyDonorsState extends State<NearbyDonors> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CloudService().getAllUser(),
      builder: (context, snapshot) => Container(
        height: AppDimensions.doubleTileContainerHeight,
        child: Column(
          children: [
            const TextAndButtonRow(
              text: "Nearby Donors",
              button: "See All",
            ),
            SizedBox(
              height: AppDimensions.verticalSpace1,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: AppDimensions.listTileSeperationHorizontal,
                  );
                },
                itemBuilder: (context, index) {
                  if (snapshot.hasError) print(snapshot.error);
                  Person person = snapshot.data?.elementAt(index) ??
                      Person(
                        phoneNumber: 111111111,
                        isAvailableForDonation: false,
                        gender: "Male",
                        name: "Benaam",
                        date: Timestamp.fromDate(DateTime(2003)),
                        location: "",
                        bloodType: "AB+",
                      );
                  return Container(
                    width: AppDimensions.doubleTileContainerWidth,
                    padding: AppDimensions.widgetPadding,
                    decoration: BoxDecoration(
                        color: AppColors.whiteFillColor1,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radius),
                        border: Border.all(
                          color: AppColors.blackTextColor1,
                        )),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    child: MediumText(text: person.name),
                                  ),
                                  Text(
                                    person.date
                                        .toDate()
                                        .toString()
                                        .split(' ')
                                        .first,
                                    style: TextStyle(
                                      color: AppColors.blackTextColor1,
                                      fontFamily: 'Poppins',
                                      fontSize: AppDimensions.verySmallTextSize,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const LocationText(location: "Bandra Mumbai"),
                                  FittedBox(
                                    fit: BoxFit.contain,
                                    child: Availability(
                                        available:
                                            person.isAvailableForDonation),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                        ),
                        SizedBox(
                          height: AppDimensions.verticalSpace2,
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
                itemCount: snapshot.data?.length ?? 0,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
