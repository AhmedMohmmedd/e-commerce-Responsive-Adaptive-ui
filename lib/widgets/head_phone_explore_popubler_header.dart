
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadPhoneExplorePopularHeader extends StatelessWidget {
  const HeadPhoneExplorePopularHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Explore Popular Categories',
          style: AppStyles.styleMedium26Poppins(context).copyWith(
            color: const Color(0xFF016170),
          ),
        ),
        const SizedBox(width: 20,),
        Text('See all', style: AppStyles.styleMedium14Poppins(context)),
        const SizedBox(width: 8,),
        SvgPicture.asset(Assets.imagesForwerd),

      ],
    );
  }
}
