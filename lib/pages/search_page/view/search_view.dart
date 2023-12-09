import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_page/components/search_view_components.dart';
import 'package:task1/pages/search_page/widgets/community_banner.dart';
import 'package:task1/pages/search_page/widgets/donor_ranking.dart';
import 'package:task1/pages/search_page/widgets/header_row.dart';
import 'package:task1/pages/search_page/widgets/single_tile_list_view_container.dart';
import 'package:task1/pages/search_page/widgets/two_tile_list_view_container.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    print("Values ${AppDimensions.screenHeight} ${AppDimensions.screenWidth}");
    return Scaffold(
      backgroundColor: AppColors.lightPinkFillColor,
      body: SingleChildScrollView(
        padding: AppDimensions.appPadding,
        child: Column(
          children: [
            HeaderRow(),
            SizedBox(
              height: AppDimensions.verticalSpace1,
            ),
            postRequestAndBloodBank(),
            SizedBox(
              height: AppDimensions.verticalSpace1,
            ),
            TwoTileListView(),
            SingleTileListView(),
            CommunityBanner(),
            DonorRanking(),
          ],
        ),
      ),
    );
  }
}
