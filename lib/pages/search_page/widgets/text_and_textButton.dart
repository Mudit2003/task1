import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class TextAndButtonRow extends StatelessWidget {
  final String text;
  final String button;
  const TextAndButtonRow({
    super.key,
    required this.text,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: AppColors.greyTextColor1,
              fontSize: AppDimensions.mediumTextSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              button,
              style: TextStyle(
                color: AppColors.greyTextColor1,
                fontSize: AppDimensions.mediumTextSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
