import 'package:e_commerce_responsive_ui/models/headphone_explor_popluer_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadPhoneExplorePopularItem extends StatelessWidget {
  const HeadPhoneExplorePopularItem({
    super.key,
    required this.headPhoneExplorePopularItemModel,
  });
  final HeadPhoneExplorePopularItemModel headPhoneExplorePopularItemModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 1,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // shadows: const [
          //   BoxShadow(
          //     color: Color(0x19000000),
          //     blurRadius: 20,
          //     offset: Offset(0, 8),
          //     spreadRadius: 0,
          //   ),
          // ],
        ),
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(headPhoneExplorePopularItemModel.image1),
              SvgPicture.asset(headPhoneExplorePopularItemModel.image2),
              SvgPicture.asset(headPhoneExplorePopularItemModel.image3),
              SvgPicture.asset(headPhoneExplorePopularItemModel.image4),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(headPhoneExplorePopularItemModel.titel,
                      style: AppStyles.styleSemiBold12Poppins(context)),
                  Text(headPhoneExplorePopularItemModel.subTitel,
                      style: AppStyles.styleMedium12Poppins(context)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
