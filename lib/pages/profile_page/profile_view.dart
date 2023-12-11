import 'package:flutter/material.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/services/cloud_services.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/button_size_text.dart';
import 'package:task1/common/widgets/image_circle.dart';
import 'package:task1/pages/profile_page/widget/text_icon.dart';
import 'package:task1/pages/search_for_donors/widgets/header.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  // needs a specific persons data whose id will be stored in a static class
  // that id will be assigned at the time of login and will be used in tandem with shared preference

  // I will be using a custom id for the purpose - 7085772856 - phone number
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPinkFillColor,
      body: Container(
        padding: AppDimensions.appPadding,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(heading: "Details"),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            FutureBuilder(
                future: CloudService().getAllUser(),
                builder: (context, snapshot) {
                  final Person person = snapshot.data!.first;
                  return Column(
                    children: [
                      ImageCircle(imageRadius: 110),
                      SizedBox(
                        height: AppDimensions.verticalSpace2,
                      ),
                      RegularText(
                        text: person.name,
                        color: AppColors.blackTextColor1,
                        size: AppDimensions.largeTextSize,
                      ),
                      RegularText(
                        text: "Shivaji nagar, Mumbai (2.5kms)",
                        color: AppColors.blackTextColor1.withOpacity(0.7),
                        size: AppDimensions.buttonTextSize,
                      ),
                      RegularText(
                        text: "Last Donation Date: 25th Jan 2022",
                        color: AppColors.blackTextColor1.withOpacity(0.7),
                        size: AppDimensions.buttonTextSize,
                      ),
                      RegularText(
                        text: "25 years old | ${person.gender}",
                        color: AppColors.blackTextColor1.withOpacity(0.5),
                        size: AppDimensions.smallTextSize,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RegularText(
                            text: "Contact no:",
                            color: AppColors.redIconColor,
                            size: AppDimensions.smallTextSize,
                          ),
                          RegularText(
                            text: "${person.phoneNumber}",
                            color: AppColors.blackTextColor1,
                            size: AppDimensions.smallTextSize,
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppDimensions.verticalSpace3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextIcon(text: "5+", label: "No. of Donations"),
                          TextIcon(text: "AB+", label: "Blood"),
                          Column(children: [
                            Container(
                              width: AppDimensions.circularContainerWidth2,
                              height: AppDimensions.circularContainerHeight2,
                              decoration: ShapeDecoration(
                                color: AppColors.redIconColor,
                                shape: OvalBorder(),
                              ),
                              child: Icon(
                                Icons.star,
                                color: AppColors.whiteFillColor1,
                                size: AppDimensions.iconSize1,
                              ),
                            ),
                            SizedBox(
                              height: AppDimensions.verticalSpace2 / 2,
                            ),
                            RegularText(
                              text: "Reviews",
                              color: AppColors.blackTextColor1,
                              size: AppDimensions.smallTextSize,
                            )
                          ])
                        ],
                      ),
                    ],
                  );
                }),
            SizedBox(
              height: AppDimensions.verticalSpace3 * 3,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: AppDimensions.maxUsableWidth,
                height: AppDimensions.customTextButtonHeight * 3 / 2,
                decoration: ShapeDecoration(
                  color: AppColors.redIconColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    AppDimensions.radius,
                  )),
                ),
                child: Center(
                  child: Text(
                    "Request for blood",
                    style: TextStyle(
                      color: AppColors.whiteFillColor1,
                      fontSize: AppDimensions.verySmallTextSize * 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
