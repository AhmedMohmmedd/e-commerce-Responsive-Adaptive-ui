import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/beats_studio_card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BeatsStudioCard extends StatelessWidget {
  const BeatsStudioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 30),
          child: Row(
            children: [
              SvgPicture.asset(Assets.imagesBeatsSolo3Wireless),
              const SizedBox(
                width: 20,
              ),
             const Expanded(child:  BeatsStudioCardDetalis())
            ],
          ),
        ),
      ),
    );
  }
}
