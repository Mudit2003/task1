import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_page/widgets/on_off_button.dart';
import 'package:task1/pages/search_page/widgets/underlined_text_button.dart';

class DonorRanking extends StatefulWidget {
  const DonorRanking({super.key});

  @override
  State<DonorRanking> createState() => _DonorRankingState();
}

class _DonorRankingState extends State<DonorRanking> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.bloodBankContainerHeight * 2,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Donors',
                  style: TextStyle(
                    color: AppColors.blackTextColor2,
                    fontSize: AppDimensions.largeTextSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                UnderlinedTextButton(
                  text: "View all",
                  size: AppDimensions.buttonTextSize,
                ),
              ],
            ),
          ),
          OnOfButton(
            buttonLabel: const [
              "Country",
              "Local",
              "Recent",
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                personCard(AppDimensions.runnerupDonorRadius),
                personCard(AppDimensions.topDonorRadius),
                personCard(AppDimensions.runnerupDonorRadius),
              ],
            ),
          ),
          InkWell(
            child: Container(
              width: AppDimensions.maxUsableWidth,
              height: AppDimensions.customTextButtonHeight,
              decoration: ShapeDecoration(
                color: AppColors.redIconColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  AppDimensions.radius2,
                )),
              ),
              child: Center(
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    color: AppColors.whiteFillColor1,
                    fontSize: AppDimensions.buttonTextSize,
                  ),
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Container personCard(double cardRadius) {
    // an object of person model will be required as a parameter
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: cardRadius,
            width: cardRadius,
            decoration: ShapeDecoration(
              shape: CircleBorder(
                  side: BorderSide(
                width: AppDimensions.circularBorderWidth,
                color: AppColors.redIconColor,
              )),
            ),
          ),
          const SizedBox(),
          Text(
            "Person 1",
            style: TextStyle(
                color: AppColors.blackTextColor1,
                fontWeight: FontWeight.w300,
                fontFamily: 'Poppins',
                fontSize: AppDimensions.mediumTextSize),
          ),
          Text(
            '🌟 220',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackTextColor1,
              fontSize: AppDimensions.buttonTextSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
