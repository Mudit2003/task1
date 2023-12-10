import 'package:flutter/material.dart';
import 'package:task1/common/modals/blood_bank.dart';
import 'package:task1/common/modals/person.dart';
import 'package:task1/common/services/cloud_services.dart';
import 'package:task1/common/utils/colors.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/common/widgets/custom_text_button.dart';
import 'package:task1/pages/search_page/widgets/location_text_widget.dart';
import 'package:task1/pages/search_page/widgets/medium_text.dart';
import 'package:task1/pages/search_page/widgets/text_and_textButton.dart';

class BloodBanksList extends StatefulWidget {
  // will take a List<Modals> as parameters and display it
  const BloodBanksList({super.key});

  @override
  State<BloodBanksList> createState() => _BloodBanksListState();
}

class _BloodBanksListState extends State<BloodBanksList> {
  Iterable<Person> a = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.singleTileContainerHeight,
      child: Column(
        children: [
          const TextAndButtonRow(
            text: "Blood Banks",
            button: "See All",
          ),
          SizedBox(
            height: AppDimensions.verticalSpace3 / 2,
          ),
          Expanded(
            child: FutureBuilder(
              future: CloudService().getAllBloodBank(),
              builder: (context, snapshot) => ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: AppDimensions.listTileSeperationHorizontal,
                  );
                },
                itemBuilder: (context, index) {
                  final BloodBank bloodBank = snapshot.data?.elementAt(index) ??
                      BloodBank(
                          name: "Mera Blood Bank",
                          location: "Mere ghar par",
                          distance: "Dooriyan");
                  return Container(
                    width: AppDimensions.doubleTileContainerWidth,
                    padding: AppDimensions.widgetPadding,
                    decoration: BoxDecoration(
                      color: AppColors.whiteFillColor1,
                      borderRadius: BorderRadius.circular(AppDimensions.radius),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: MediumText(
                            text: bloodBank.name,
                          ),
                        ),
                        const LocationText(
                            showDistanceFromYourLocation: true,
                            location: "Bandra, Mumbai"),
                        SizedBox(
                          height: AppDimensions.verticalSpace1,
                        ),
                        Center(
                          child: CustomTextButton(
                            text: "Request",
                            width: AppDimensions.customTextButtonWidth,
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: snapshot.data?.length ?? 0,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
