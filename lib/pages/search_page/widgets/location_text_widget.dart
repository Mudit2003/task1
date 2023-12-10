import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class LocationText extends StatelessWidget {
  final String location;
  final bool showDistanceFromYourLocation;
  const LocationText({
    super.key,
    required this.location,
    this.showDistanceFromYourLocation = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // there is an issue with alignment of the icon widget
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.redIconColor,
            size: AppDimensions.iconSize1,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Text(
              location,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: AppColors.greyTextColor2,
                fontSize: AppDimensions.verySmallTextSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          showDistanceFromYourLocation
              ? Text(
                  "2.327 km",
                  style: TextStyle(
                    overflow: TextOverflow.fade,
                    color: AppColors.redTextColor,
                    fontSize: AppDimensions.distanceTextSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
