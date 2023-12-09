import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class LocationText extends StatelessWidget {
  final String location;
  const LocationText({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Icon(
          Icons.location_on_outlined,
          color: AppColors.redIconColor,
          size: AppDimensions.iconSize1,
        ),
        Text(
          location,
          style: TextStyle(
            color: AppColors.greyTextColor2,
            fontSize: AppDimensions.verySmallTextSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        )
      ]),
    );
  }
}
