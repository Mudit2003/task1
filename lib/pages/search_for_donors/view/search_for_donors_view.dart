import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/common/controllers/state_controller.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_for_donors/widgets/button_grid.dart';
import 'package:task1/pages/search_for_donors/widgets/header.dart';
import 'package:task1/pages/search_for_donors/widgets/search_bar.dart';

class SearchForDonorsView extends GetView<StateController> {
  const SearchForDonorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPinkFillColor,
      body: Container(
        padding: AppDimensions.appPadding,
        child: Column(
          children: [
            const Header(),
            CustomSearchBar(),
            ButtonGrid(),
            // postRequestAndBloodBank(),
            // TwoTileListView(),
            // SingleTileListView(),
            // CommunityBanner(),
            // DonorRanking(),
          ],
        ),
      ),
    );
  }
}
