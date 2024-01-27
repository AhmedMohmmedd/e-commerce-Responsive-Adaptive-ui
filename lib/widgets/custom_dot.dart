
import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        color:color,
        shape: OvalBorder(),
      ),
    );
  }
}
