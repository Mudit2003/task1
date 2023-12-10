import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';

class LargeBoldText extends StatelessWidget {
  final String text;
  final Color color;
  const LargeBoldText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: AppDimensions.largeTextSize,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
