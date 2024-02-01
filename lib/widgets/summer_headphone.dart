import 'dart:developer';

import 'package:e_commerce_responsive_ui/models/daily_deals_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/daily_deals_item.dart';
import 'package:e_commerce_responsive_ui/widgets/daily_deals_list_view.dart';
import 'package:e_commerce_responsive_ui/widgets/summer_headphone_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SummerHeadPone extends StatelessWidget {
  const SummerHeadPone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width.toString());
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummerHeadPoneCard(),
         SizedBox(
          height: 50,
        ),
         SummerHeadPoneHeader(),
         DailyDealsListView()
      ],
    );
  }
}

class SummerHeadPoneCard extends StatelessWidget {
  const SummerHeadPoneCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.1,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFA1D2FF),
            borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child:
           MediaQuery.sizeOf(context).width < 1290 ?  Stack(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.bottomStart,
                child: Text('Summer Headphones \n from top brands',
                    style: AppStyles.styleMedium26Poppins(context)),
              ),
             const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 10),
                    child: Text(
                      'Buy It Now ->',
                      style: AppStyles.styleMedium14Poppins(context),
                    ),
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 40),
                      child: SvgPicture.asset(
                        Assets.imagesGroup50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ) :
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.bottomStart,
                child: Text('Summer Headphones \n from top brands',
                    style: AppStyles.styleMedium26Poppins(context)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 10),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Buy It Now ->',
                        style: AppStyles.styleMedium14Poppins(context),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 40),
                      child: SvgPicture.asset(
                        Assets.imagesGroup50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
