import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SummerHeadPoneCard extends StatelessWidget {
  const SummerHeadPoneCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // aspectRatio:  2 / 1.1,
      aspectRatio: 420 / 215,

      child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFA1D2FF),
              borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text('Summer Headphones \n from top brands',
                          style: AppStyles.styleMedium26Poppins(context)),
                    ),
                    
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
                  ],
                ),
                const Expanded(child: SizedBox()),
                SvgPicture.asset(
                  Assets.imagesGroup50,
                ),
                const Flexible(
                    child: SizedBox(
                  width: 20,
                )),
              ],
            ),
          )),
    );
  }
}
