import 'package:flutter/material.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_page/components/search_view_components.dart';
import 'package:task1/pages/search_page/widgets/community_banner.dart';
import 'package:task1/pages/search_page/widgets/donor_ranking.dart';
import 'package:task1/pages/search_page/widgets/header_row.dart';
import 'package:task1/pages/search_page/widgets/single_tile_list_view_container.dart';
import 'package:task1/pages/search_page/widgets/two_tile_list_view_container1.dart';
import 'package:task1/pages/search_page/widgets/two_tile_list_view_container2.dart';

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
              height: AppDimensions.verticalSpace3,
            ),
            postRequestAndBloodBank(),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            NearbyDonors(),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            DonationRequests(),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            CommunityBanner(),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            BloodBanksList(),
            SizedBox(
              height: AppDimensions.verticalSpace3,
            ),
            DonorRanking(),
          ],
        ),
      ),
    );
  }
}
