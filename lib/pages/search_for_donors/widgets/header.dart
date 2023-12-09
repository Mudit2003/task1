import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/large_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.maxUsableWidth,
      child: Row(children: [
        Icon(
          Icons.arrow_back_ios_new,
          size: AppDimensions.iconSize1,
        ),
        LargeSemiBoldText(text: "Search For Donors")
      ]),
    );
  }
}
