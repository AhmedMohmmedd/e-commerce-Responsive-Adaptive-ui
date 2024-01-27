import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/beats_studio_card_color_row.dart';
import 'package:e_commerce_responsive_ui/widgets/custom_button.dart';
import 'package:e_commerce_responsive_ui/widgets/custom_favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BeatsStudioCardDetalis extends StatelessWidget {
  const BeatsStudioCardDetalis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Beats Studio 3 wireless Headphone',
            style: AppStyles.styleMedium20Poppins(context)),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesSatrs),
            const SizedBox(
              width: 14,
            ),
            Text('(2000 + Reviews)',
                style: AppStyles.styleRegular14Poppins(context)),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Ergonomic ear cups with on-ear controls Up to 22 .',
              style: AppStyles.styleRegular12_5Poppins(context)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(r'Price $349.95',
            style: AppStyles.styleMedium18Poppins(context)
                .copyWith(color: const Color(0xFF009393))),
        // const SizedBox(
        //   height: 20,
        // ),
        const Expanded(child: BeatsStudioCardColorRow()),

        const SizedBox(
          height: 10,
        ),
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Center(
            child: Row(
              children: [
                CustomFavoriteButton(),
                SizedBox(
                  width: 20,
                ),
                CustomButton(
                  text: 'Add to Cart',
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomButton(
                  text: 'Buy now',
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
