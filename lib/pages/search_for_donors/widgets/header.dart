import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/large_text.dart';

class Header extends StatelessWidget {
  final String heading;

  const Header({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.maxUsableWidth,
      child: Row(children: [
        Icon(
          Icons.arrow_back_ios_new,
          size: AppDimensions.iconSize1,
        ),
        LargeSemiBoldText(text: heading)
      ]),
    );
  }
}
