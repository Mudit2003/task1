import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/services/cloud_services.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/image_circle.dart';
import 'package:task1/common/widgets/location_text_widget.dart';
import 'package:task1/pages/search_page/widgets/large_bold_text.dart';
import 'package:task1/pages/search_page/widgets/small_text.dart';
import 'package:task1/pages/search_page/widgets/text_and_textButton.dart';

class DonationRequests extends StatefulWidget {
  // will take a List<Modals> as parameters and display it
  const DonationRequests({super.key});

  @override
  State<DonationRequests> createState() => _DonationRequestsState();
}

class _DonationRequestsState extends State<DonationRequests> {
  // logic of popping is still pending, will require removing from database

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
          SizedBox(
            height: AppDimensions.verticalSpace3 / 2,
          ),
          Expanded(
            child: FutureBuilder(
              future: CloudService().getAllUser(),
              builder: (context, snapshot) => ListView.builder(
                itemBuilder: (context, index) {
                  final Person person = snapshot.data?.elementAt(index) ??
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
                    width: AppDimensions.maxUsableWidth,
                    padding: AppDimensions.widgetPadding,
                    decoration: BoxDecoration(
                        color: AppColors.whiteFillColor1,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radius),
                        border: Border.all(
                          color: AppColors.blackTextColor1,
                        )),
                    // height: AppDimensions.singleTileContainerHeight,
                    child: Column(children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageCircle(imageRadius: 56),
                            SizedBox(
                              width: 2 * AppDimensions.horizontalSpace1,
                            ),
                            Expanded(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          person.name,
                                          style: TextStyle(
                                            color: AppColors.blackTextColor1,
                                            fontSize:
                                                AppDimensions.mediumTextSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const LocationText(
                                            location: "Bandra Mumbai"),
                                        SmallText(
                                            text:
                                                "Date:${person.date.toDate().toString()}"),
                                      ],
                                    ),
                                    Column(
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LargeBoldText(
                                          text: person.bloodType,
                                          color: AppColors.redIconColor,
                                        ),
                                        SmallText(text: "Blood required"),
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppDimensions.verticalSpace1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Decline",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.blackTextColor1,
                                fontSize: AppDimensions.largeTextSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: LargeBoldText(
                              text: "Accept",
                              color: AppColors.redIconColor,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  );
                },
                shrinkWrap: true,
                itemCount: snapshot.data?.length ?? 0,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
