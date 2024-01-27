import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/widgets/beats_studio_card.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_section_header.dart';
import 'package:flutter/material.dart';

class HeadphoneSection extends StatelessWidget {
  const HeadphoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          HeadphoneSectionHeader(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      BeatsStudioCard(),
                    ],
                  ),
                ),

                ///////////////////////////////////
                Expanded(flex: 2, child: Column()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
