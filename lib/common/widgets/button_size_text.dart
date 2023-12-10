import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';

class RegularText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const RegularText(
      {super.key, required this.text, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
