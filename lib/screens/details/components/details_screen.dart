import 'package:firnuture_app/constands.dart';
import 'package:firnuture_app/models/product.dart';
import 'package:firnuture_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
          ),
        ),
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          // iconSize: 50.0,
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart_with_item.svg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
