import 'package:flutter/material.dart';

import '../../../constands.dart';
import 'color_dot_indicator.dart';

class ListOfIndicatorColor extends StatelessWidget {
  const ListOfIndicatorColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColorDotIndicator(
          color: Color(0xFF80989A),
          isSelected: true,
        ),
        ColorDotIndicator(
          color: Color(0xFFFF5200),
          isSelected: true,
        ),
        ColorDotIndicator(
          color: kPrimaryColor,
          isSelected: true,
        ),
      ],
    );
  }
}
