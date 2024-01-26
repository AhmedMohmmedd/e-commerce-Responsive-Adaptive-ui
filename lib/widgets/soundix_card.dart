import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoundixCard extends StatelessWidget {
  const SoundixCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 ,right: 20),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: ShapeDecoration(
              color: const Color(0xffBFECFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20 , right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(Assets.imagesCart),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Need Help',
                      style: AppStyles.styleSemiBold14Poppins(context)),
                ),
                Text(
                    'About Account Management Ordering & Payment Refund And FAQ ',
                    textAlign: TextAlign.center,
                    style: AppStyles.styleMedium12Roboto(context)),
                Container(
                  width: 140,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9F4FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text('Customer Service',
                          style: AppStyles.styleMedium12Poppins(context)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
