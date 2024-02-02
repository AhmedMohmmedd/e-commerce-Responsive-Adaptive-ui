import 'package:e_commerce_responsive_ui/widgets/adabtive_layout_widget.dart';
import 'package:e_commerce_responsive_ui/widgets/dashboard_desktop_layout.dart';
import 'package:e_commerce_responsive_ui/widgets/dashboard_mobile_layout.dart';
import 'package:e_commerce_responsive_ui/widgets/dashboard_tablet_layout.dart';
import 'package:e_commerce_responsive_ui/widgets/headPhone_section..dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_section.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color.fromARGB(255, 82, 80, 80),
              elevation: 0,
            )
          : null,
      drawer:MediaQuery.sizeOf(context).width < 800 ? const SoundixSection() : null,
      body: AdaptiveLayoutBulider(
          mobilelayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabLetLayout(),
          daskTopLayout: (context) => const DashboardDeskTopLayout()),
    );
  }
}
