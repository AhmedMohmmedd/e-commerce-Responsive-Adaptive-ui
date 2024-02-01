import 'package:e_commerce_responsive_ui/models/daily_deals_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/widgets/daily_deals_item.dart';
import 'package:flutter/material.dart';

class DailyDealsListView extends StatelessWidget {
  const DailyDealsListView({super.key});
  static const items = [
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsnewstudioblueheadset),
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsprowirelessheadset),
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsnewstudioblueheadset),
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsnewstudioblueheadset),
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsnewstudioblueheadset),
    DailyDealsItemModel(
        titel: 'beats new studio blue headset ',
        subTitel: '205 Reviews  1906 Orders',
        price: r'price $190',
        image: Assets.imagesBeatsnewstudioblueheadset),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => DailyDealsItem(dailyDealsItemModel: e)).toList(),
    );
  }
}
