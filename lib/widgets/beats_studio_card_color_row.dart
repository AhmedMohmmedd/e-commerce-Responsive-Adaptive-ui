import 'package:e_commerce_responsive_ui/utils/app_styles.dart';
import 'package:e_commerce_responsive_ui/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class BeatsStudioCardColorRow extends StatelessWidget {
  const BeatsStudioCardColorRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
          children: [
            Text(
              'Color',
              style: AppStyles.styleMedium16Poppins(context).copyWith(color: Colors.black),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustomDot(
              color: Color(0xFF4BA3E5),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustomDot(
              color: Color(0xFF00AD97),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustomDot(
              color: Color(0xFFE27373),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustomDot(
              color: Color(0xFF75E573),
            ),
          // const  Expanded(
          //     child:  SizedBox(
          //     ),
          //   ),
          
        
        Container(
          width: 88,
          height: 32,
          decoration: ShapeDecoration(
            color: const Color(0xFFF2F2F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 23,
                height: 23,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
                child: const Center(child: Text('---')),
              ),
              const Text('1'),
              Container(
                width: 23,
                height: 23,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
                child: const Center(child: Text('+')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
