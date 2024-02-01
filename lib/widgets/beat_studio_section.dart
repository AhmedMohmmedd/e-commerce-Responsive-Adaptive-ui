
import 'package:e_commerce_responsive_ui/widgets/beats_studio_card.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_list_view.dart';
import 'package:flutter/material.dart';

class BeatsStudioSection extends StatelessWidget {
  const BeatsStudioSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BeatsStudioCard(),
        SizedBox(
          height: 50,
        ),
        HeadphoneListView(),
        // SizedBox(
        //   height: 50,
        // ),
        // HeadPhoneExplorePopular()
      ],
    );
  }
}
