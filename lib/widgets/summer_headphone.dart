import 'dart:developer';

import 'package:e_commerce_responsive_ui/models/daily_deals_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/daily_deals_item.dart';
import 'package:e_commerce_responsive_ui/widgets/daily_deals_list_view.dart';
import 'package:e_commerce_responsive_ui/widgets/summer_headphone_card.dart';
import 'package:e_commerce_responsive_ui/widgets/summer_headphone_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SummerHeadPoneSection extends StatelessWidget {
  const SummerHeadPoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width.toString());
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummerHeadPoneCard(),
         SizedBox(
          height: 50,
        ),
         SummerHeadPoneHeader(),
         DailyDealsListView()
      ],
    );
  }
}
