import 'package:e_commerce_responsive_ui/models/headphone_explor_popluer_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/widgets/head_phone_explore_popubler_header.dart';
import 'package:e_commerce_responsive_ui/widgets/head_phone_explore_popubler_item.dart';
import 'package:flutter/material.dart';

class HeadPhoneExplorePopular extends StatelessWidget {
  const HeadPhoneExplorePopular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeadPhoneExplorePopularHeader(),
        SizedBox(
          height: 40,
        ),
        HeadPhoneExplorePopularListView()
      ],
    );
  }
}

class HeadPhoneExplorePopularListView extends StatelessWidget {
  const HeadPhoneExplorePopularListView({super.key});
  static const items = [
    HeadPhoneExplorePopularItemModel(
        image1: Assets.imagesEllipse15,
        image2: Assets.imagesEllipse16,
        image3: Assets.imagesEllipse17,
        image4: Assets.imagesEllipse18,
        titel: 'Popular  top 10 brands',
        subTitel: '5,400 + Orders & Reviews'),
    HeadPhoneExplorePopularItemModel(
        image1: Assets.imagesCart,
        image2: Assets.imagesCart,
        image3: Assets.imagesCart,
        image4: Assets.imagesCart,
        titel: 'Newest Sellers',
        subTitel: '4,600 + Orders & Reviews'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      HeadPhoneExplorePopularItem(headPhoneExplorePopularItemModel: items[0]),
      HeadPhoneExplorePopularItem(headPhoneExplorePopularItemModel: items[1]),
     ],
    );
  }
}
