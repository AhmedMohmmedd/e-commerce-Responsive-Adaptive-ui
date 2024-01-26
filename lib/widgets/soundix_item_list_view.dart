
import 'package:e_commerce_responsive_ui/models/soundix_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/widgets/soundix_item.dart';
import 'package:flutter/material.dart';

class SoundixItemListView extends StatelessWidget {
  const SoundixItemListView({super.key});
static const items = [
  SoundixItemModel(text: 'Home', image: Assets.imagesHome),
  SoundixItemModel(text: 'Explore', image: Assets.imagesExplore),
  SoundixItemModel(text: 'Saved', image: Assets.imagesSaved),
  SoundixItemModel(text: 'Cart', image: Assets.imagesCart),
  SoundixItemModel(text: 'Selling', image: Assets.imagesSeliing),
  SoundixItemModel(text: 'Profile', image: Assets.imagesProfile),
  SoundixItemModel(text: 'Prchase History', image: Assets.imagesVector),
  SoundixItemModel(text: 'Contact us', image: Assets.imagesConectUs),
  SoundixItemModel(text: 'Settings', image: Assets.imagesSeliing),
];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context , index){
      return SoundixItem(soundixItemModel: items[index]);
    });
  }
}