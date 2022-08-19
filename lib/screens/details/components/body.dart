import 'package:firnuture_app/constands.dart';
import 'package:firnuture_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'list_of_indicator_color.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments as Product;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductPoster(
                  size: size,
                  image: args.image.toString(),
                ),
              ),
              ListOfIndicatorColor(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  args.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                args.price.toString(),
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  args.description.toString(),
                  // maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: kTextLightColor,
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 7, horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(0xFFFCBF1E),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: 18,
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/shopping-bag.svg',
                  height: 18,
                ),
                label: Text(
                  'Add to Card',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
