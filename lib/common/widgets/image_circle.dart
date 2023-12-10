import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';

class ImageCircle extends StatelessWidget {
  final String imagePath;
  final double imageRadius;
  const ImageCircle(
      {super.key,
      this.imagePath = "assets/images/person.jpeg",
      required this.imageRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimensions.appPadding,
      width: imageRadius < 100
          ? (imageRadius < 50
              ? AppDimensions.circularContainerWidth1
              : AppDimensions.circularContainerWidth2)
          : AppDimensions.circularContainerWidth2 * 2,
      height: imageRadius < 100
          ? (imageRadius < 50
              ? AppDimensions.circularContainerHeight1
              : AppDimensions.circularContainerHeight2)
          : AppDimensions.circularContainerHeight2 * 2,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        shape: OvalBorder(),
      ),
    );
  }
}
