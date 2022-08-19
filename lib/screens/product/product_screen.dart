import 'package:firnuture_app/constands.dart';
import 'package:firnuture_app/models/product.dart';
import 'package:firnuture_app/screens/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
 
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: build_appBar(),
      body: Body(),
    );
  }

  AppBar build_appBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: false,
      title: const Text('Dashboard'),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/notification.svg'),
        ),
      ],
    );
  }
}
