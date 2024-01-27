import 'package:e_commerce_responsive_ui/utils/app_images.dart';
import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        prefixIcon:  SvgPicture.asset(Assets.imagesSearch ,fit: BoxFit.scaleDown,),
        suffixIcon: SvgPicture.asset(Assets.imagesList ,fit: BoxFit.scaleDown,),
        hintText: hint,
        helperStyle:
            AppStyles.styleMedium16Poppins(context).copyWith(color: const Color(0xFFAAAAAA)),
        fillColor: Colors.white,
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Color(0xFFFAFAFA),
    ),
  );
}