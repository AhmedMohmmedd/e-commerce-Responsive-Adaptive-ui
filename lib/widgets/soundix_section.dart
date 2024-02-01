import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_card.dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_header.dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundixSection extends StatelessWidget {
  const SoundixSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width * .50,
        padding: const EdgeInsets.only(left: 10),
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 16,
            ),
             SoundixHeader(),
             SizedBox(
              height: 36,
            ),
             Padding(
              padding: EdgeInsets.only(left: 5),
              child: SoundixItemListView(),
            ),
             SizedBox(
              height: 36,
            ),
            SoundixCard(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
