import 'package:flutter/material.dart';
import 'package:task1/common/icon/custom_icons.dart';
import 'package:task1/pages/search_page/widgets/icon_text_button.dart';

Row postRequestAndBloodBank() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconTextButton(
        icon: CustomIcons.ic_round_post_add,
        text: "Post Request",
      ),
      IconTextButton(
        icon: CustomIcons.blood_bank,
        text: "Blood Bank",
      )
    ],
  );
}
