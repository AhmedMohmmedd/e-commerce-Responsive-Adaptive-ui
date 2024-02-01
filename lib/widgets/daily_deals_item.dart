import 'package:e_commerce_responsive_ui/models/daily_deals_item_model.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DailyDealsItem extends StatelessWidget {
  const DailyDealsItem({super.key, required this.dailyDealsItemModel});
  final DailyDealsItemModel dailyDealsItemModel;
  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 1010 ?
    Row(
      children: [
        SvgPicture.asset(dailyDealsItemModel.image),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.titel,
          style: AppStyles.styleMedium12Poppins(context)
              .copyWith(color: Colors.black),
        ),
      ),
      FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.subTitel,
          style: AppStyles.styleMedium12Poppins(context),
        ),
      ),
      FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.price,
          style: AppStyles.styleMedium12Poppins(context),
        ),
      ),
          ],
        )
      ],
    ) :
     ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.titel,
          style: AppStyles.styleMedium12Poppins(context)
              .copyWith(color: Colors.black),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.subTitel,
          style: AppStyles.styleMedium12Poppins(context),
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          dailyDealsItemModel.price,
          style: AppStyles.styleMedium12Poppins(context),
        ),
      ),
      leading: SvgPicture.asset(dailyDealsItemModel.image),
    );
  }
}
