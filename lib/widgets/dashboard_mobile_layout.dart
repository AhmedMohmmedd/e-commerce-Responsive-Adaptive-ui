import 'package:e_commerce_responsive_ui/widgets/beat_studio_section.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_section_header.dart';
import 'package:e_commerce_responsive_ui/widgets/summer_headphone.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

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
          
                BeatsStudioSection(),
                SizedBox(
                  height: 20,
                ),
                SummerHeadPoneSection(),
              ],
            ),
        ),
      );
  }
}