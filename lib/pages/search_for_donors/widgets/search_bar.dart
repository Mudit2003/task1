import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/common/controllers/state_controller.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key});
  final stateController = Get.find<StateController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppDimensions.maxUsableWidth,
        height: AppDimensions.customTextButtonHeight,
        // padding: AppDimensions.,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimensions.radius3,
            ),
            border: Border.all(color: AppColors.blackTextColor1)),
        child: Row(
          children: [
            Container(
              padding: AppDimensions.textButtonInactivePadding,
              child: Icon(
                Icons.search,
                color: AppColors.redIconColor,
                size: AppDimensions.iconSize2,
              ),
            ),
            Container(
              width: AppDimensions.searchBarWidth,
              child: TextField(
                controller: stateController.searchBarEditingController,
                // expands: true,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                ),
                maxLines: 1,
                cursorColor: AppColors.blackTextColor1,
                decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Search For Donors",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: AppDimensions.mediumTextSize,
                      fontWeight: FontWeight.w300,
                    )),
              ),
            )
          ],
        ));
  }
}
