import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final double size;
  const HeadingText({
    super.key,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.greyTextColor1,
        fontSize: size,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
