
import 'package:e_commerce_responsive_ui/models/soundix_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoundixItem extends StatelessWidget {
  const SoundixItem({
    super.key, required this.soundixItemModel,
  });
final SoundixItemModel soundixItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(soundixItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          soundixItemModel.text,
          style: AppStyles.styleMedium18Poppins(context),
        ),
      ),
    );
  }
}