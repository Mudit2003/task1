import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/common/controllers/state_controller.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class OnOfButton extends StatelessWidget {
  final List<String> buttonLabel;
  final stateController = Get.find<StateController>();
  OnOfButton({super.key, required this.buttonLabel});
  @override
  Widget build(BuildContext context) {
    int activeButton = stateController.activeIndexOnOffButton.value;
    print("$activeButton ${stateController.activeIndexOnOffButton}");
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(buttonLabel.length, (index) {
            return InkWell(
              onTap: () => stateController.updateOnOffButtonActiveIndex(index),
              child: Obx(
                () => Container(
                  padding: stateController.activeIndexOnOffButton == index
                      ? AppDimensions.textButtonActivePadding
                      : AppDimensions.textButtonInactivePadding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radius3,
                    ),
                    color: stateController.activeIndexOnOffButton == index
                        ? AppColors.redIconColor
                        : Colors.transparent,
                  ),
                  // height: ,
                  child: Text(buttonLabel[index],
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: AppDimensions.buttonTextSize,
                        color: stateController.activeIndexOnOffButton == index
                            ? AppColors.whiteFillColor1
                            : AppColors.blackTextColor2,
                      )),
                ),
              ),
            );
          })),
    );
  }
}
