import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/beats_studio_card.dart';
import 'package:e_commerce_responsive_ui/widgets/head_phone_explore_popubler.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_list_view.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_section_header.dart';
import 'package:e_commerce_responsive_ui/widgets/summer_headphone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadphoneSection extends StatelessWidget {
  const HeadphoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            HeadphoneSectionHeader(),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      BeatsStudioCard(),
                      SizedBox(
                        height: 50,
                      ),
                      HeadphoneListView(),
                      SizedBox(
                        height: 50,
                      ),
                      // HeadPhoneExplorePopular()
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ///////////////////////////////////
                Expanded(
                    flex: 2,
                    child: SummerHeadPone()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
