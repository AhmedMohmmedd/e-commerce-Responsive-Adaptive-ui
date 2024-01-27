import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadphoneSectionHeader extends StatelessWidget {
  const HeadphoneSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Headphone',
                  style: AppStyles.styleMedium26Poppins(context)
                      .copyWith(color: Colors.black)),
              Text('from top brands',
                  style: AppStyles.styleRegular16Poppins(context)),
            ],
          ),
        ),
        const Expanded(child: CustomTextFiled(hint: 'Search Product')),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(Assets.imagesMassege),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(Assets.imagesRanig),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(Assets.imagesMassege),
      ],
    );
  }
}
