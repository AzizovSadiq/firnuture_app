import 'package:flutter/material.dart';

import '../../constands.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Function press;
  const ProductCard({
    Key? key,
    required this.press,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 160,
      child: InkWell(
        onTap: 
       () {
          Navigator.of(context).pushNamed('detailsScreen',
              arguments: Product(
                id: product.id,
                image: product.image,
                title: product.title,
                price: product.price,
                description: product.description,
              ),
              );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  kDefaultShadow,
                ],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultRad10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                width: 200,
                height: 160,
                child: Image.asset(
                  product.image ?? 'assets/images/Item_1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title ?? 'Mebel',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: const BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Text(
                        '${product.price} Azn',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
