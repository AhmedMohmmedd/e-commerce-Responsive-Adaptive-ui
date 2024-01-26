
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoundixHeader extends StatelessWidget {
  const SoundixHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Assets.imagesSoundix2),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          'Soundix',
          style: AppStyles.styleBold25PublicSans(context),
        ),
      ),
    );
  }
}