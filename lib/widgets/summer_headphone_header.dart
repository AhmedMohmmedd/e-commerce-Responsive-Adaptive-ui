import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SummerHeadPoneHeader extends StatelessWidget {
  const SummerHeadPoneHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Daily Deals ',
            style: AppStyles.styleSemiBold24Roboto(context),
          ),
          Row(
            children: [
              Text(
                'View all',
                style: AppStyles.styleMedium14Poppins(context),
              ),
              const Icon(Icons.start)
            ],
          )
        ],
      ),
    );
  }
}
