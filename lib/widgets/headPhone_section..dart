
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_section_header.dart';
import 'package:flutter/material.dart';

class HeadphoneSection extends StatelessWidget {
  const HeadphoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20),
      child: Column(
        
        children: [
          Expanded(
            child: HeadphoneSectionHeader(),
          )
        ],
      ),
    );
  }
}