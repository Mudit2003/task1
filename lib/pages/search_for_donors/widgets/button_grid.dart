import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/common/controllers/state_controller.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/custom_text_button.dart';

class ButtonGrid extends StatelessWidget {
  final stateController = Get.find<StateController>();
  ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.doubleTileContainerWidth * 2 +
          AppDimensions.listTileSeperationHorizontal,
      height: AppDimensions.customTextButtonHeight * 2 +
          AppDimensions.listTileSeperationVertical,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppDimensions.listTileSeperationVertical,
          crossAxisSpacing: AppDimensions.listTileSeperationHorizontal,
          mainAxisExtent: AppDimensions.customTextButtonHeight,
        ),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Obx(
            () => CustomTextButton(
              text: "Button",
              textColor:
                  stateController.activeIndexGridViewButton.value == index
                      ? AppColors.whiteFillColor1
                      : AppColors.blackTextColor1,
              width: AppDimensions.doubleTileContainerWidth,
              onTap: () =>
                  stateController.updateGridViewButtonActiveIndex(index),
              fill: stateController.activeIndexGridViewButton.value == index
                  ? AppColors.redIconColor
                  : AppColors.whiteFillColor1,
              elevated: false,
            ),
          );
        },
      ),
    );
  }
}
