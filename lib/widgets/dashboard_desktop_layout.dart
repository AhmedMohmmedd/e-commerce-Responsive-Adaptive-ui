
import 'package:e_commerce_responsive_ui/widgets/headPhone_section..dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_section.dart';
import 'package:flutter/material.dart';

class DashboardDeskTopLayout extends StatelessWidget {
  const DashboardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Expanded(
          flex: 1,
          child: SoundixSection(),
        ),
        Expanded(
            flex: 5,
            child: HeadphoneSection())
      ],
    );
  }
}
