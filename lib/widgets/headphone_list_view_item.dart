import 'package:e_commerce_responsive_ui/models/headphone_list_view_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadphoneListViewItem extends StatelessWidget {
  const HeadphoneListViewItem({
    super.key,
    required this.headphoneListViewItemModel,
  });
  final HeadphoneListViewItemModel headphoneListViewItemModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset(headphoneListViewItemModel.image)),
              const SizedBox(
                height: 20,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  headphoneListViewItemModel.titel,
                  style: AppStyles.styleSemiBold14OpenSans(context),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  headphoneListViewItemModel.price,
                  style: AppStyles.styleSemiBold14OpenSans(context).copyWith(
                    color: const Color(0xFF5C5C5C),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Assets.imagesRatestar),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        headphoneListViewItemModel.rate,
                        style: AppStyles.styleMedium14Roboto(context),
                      ),
                    ],
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const ShapeDecoration(
                        color: Color(0xFF009393),
                        shape: OvalBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 33,
                            offset: Offset(0, 10),
                            spreadRadius: 0,
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
