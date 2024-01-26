import 'package:e_commerce_responsive_ui/widgets/adabtive_layout_widget.dart';
import 'package:e_commerce_responsive_ui/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      backgroundColor:const Color(0xFFFAFAFA),
      body: AdaptiveLayoutBulider(
          mobilelayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          daskTopLayout: (context) =>const  DashboardDeskTopLayout()),
    );
  }
}