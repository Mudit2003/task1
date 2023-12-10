import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/heading_text.dart';

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
          HeadingText(
            text: text,
            size: AppDimensions.mediumTextSize,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              button,
              style: TextStyle(
                color: AppColors.greyTextColor1,
                fontSize: AppDimensions.mediumTextSize,
                fontFamily: 'Poppins',
                decoration: TextDecoration.underline,
                decorationColor: AppColors.greyTextColor1,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
