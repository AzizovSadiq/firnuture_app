import 'package:flutter/material.dart';

import '../../../constands.dart';

class ColorDotIndicator extends StatelessWidget {
  final Color? color;
  final bool isSelected;
  const ColorDotIndicator({
    Key? key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: const EdgeInsets.all(3),
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          style: BorderStyle.solid,
          color: isSelected ? const Color(0xFF707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
