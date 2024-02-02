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
    return  MediaQuery.sizeOf(context).width < 800 ?  
     SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text('Beats Studio 3 wireless Headphone',
                style: AppStyles.styleMedium20Poppins(context)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.imagesSatrs),
              const SizedBox(
                width: 14,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
                child: Text('(2000 + Reviews)',
                    style: AppStyles.styleRegular14Poppins(context)),
              ),
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
           SizedBox(
            height: MediaQuery.sizeOf(context).width > 1049 ? 20 : null,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(r'Price $349.95',
                style: AppStyles.styleMedium18Poppins(context)
                    .copyWith(color: const Color(0xFF009393))),
          ),
     
          BeatsStudioCardColorRow(),
     
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
         ),
     )
    : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text('Beats Studio 3 wireless Headphone',
              style: AppStyles.styleMedium20Poppins(context)),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesSatrs),
            const SizedBox(
              width: 14,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
              child: Text('(2000 + Reviews)',
                  style: AppStyles.styleRegular14Poppins(context)),
            ),
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
         SizedBox(
          height: MediaQuery.sizeOf(context).width > 1049 ? 20 : null,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(r'Price $349.95',
              style: AppStyles.styleMedium18Poppins(context)
                  .copyWith(color: const Color(0xFF009393))),
        ),

        BeatsStudioCardColorRow(),

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
