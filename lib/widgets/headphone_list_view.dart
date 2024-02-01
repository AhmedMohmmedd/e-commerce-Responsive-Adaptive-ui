import 'package:e_commerce_responsive_ui/models/headphone_list_view_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/headphone_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadphoneListView extends StatelessWidget {
  const HeadphoneListView({super.key});
  static const items = [
    HeadphoneListViewItemModel(
      image: Assets.imagesOriginalBeatsSoloPro,
      titel: 'Original Beats Solo Pro',
      price: r'Price $323.20',
      rate: '4.5',
    ),
    HeadphoneListViewItemModel(
      image: Assets.imagesBeatsStudio3Bluetooth,
      titel: 'Original Beats Solo Pro',
      price: r'Price $323.20',
      rate: '5',
    ),
    HeadphoneListViewItemModel(
      image: Assets.imagesBeatsSolo3Wireless,
      titel: 'Original Beats Solo Pro',
      price: r'Price $323.20',
      rate: '4.5',
    ),
   HeadphoneListViewItemModel(
      image: Assets.imagesBeatsStudio3Bluetooth,
      titel: 'Original Beats Solo Pro',
      price: r'Price $323.20',
      rate: '5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child:
                  HeadphoneListViewItem(headphoneListViewItemModel: items[index]),
            );
          }),
    );
  }
}
