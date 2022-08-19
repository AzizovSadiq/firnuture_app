import 'package:firnuture_app/constands.dart';
import 'package:firnuture_app/models/product.dart';

import 'package:firnuture_app/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/details/components/details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: ProductScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const  ProductScreen(),
        'detailsScreen':(context) => const  DetailsScreen(),
      },
    );
  }
}
