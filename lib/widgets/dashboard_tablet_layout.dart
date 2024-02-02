
import 'package:e_commerce_responsive_ui/widgets/dashboard_mobile_layout.dart';
import 'package:e_commerce_responsive_ui/widgets/headPhone_section..dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_section.dart';
import 'package:flutter/material.dart';

class DashboardTabLetLayout extends StatelessWidget {
  const DashboardTabLetLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SoundixSection()),
        Expanded(
          flex: 4,
          child: DashboardMobileLayout()),
      ],
    );
  }
}
