import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.text});
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: 130,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            
          ),
          side: const BorderSide(
            color:  Color(0xFF009393)
          ),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF009393),
        ),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            text,
            style: AppStyles.styleMedium16Poppins(context).copyWith(color: textColor),
          ),
        ),
        
      ),
    );
  }
}
