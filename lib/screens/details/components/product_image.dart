import 'package:flutter/material.dart';

import '../../../constands.dart';
class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(image,
              width: size.width * 0.7,
              height: size.height * 0.7,
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}