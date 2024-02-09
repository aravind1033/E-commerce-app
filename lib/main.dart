import 'package:flutter/material.dart';
import 'package:shop/pages/home_page.dart';
import 'package:shop/pages/login_page.dart';
import 'package:shop/pages/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductDetailsPage(productDescription: 'This is the best pair of shoes', productName: 'Nike Air Jordan', price: 'Rs.500/-',),
    );
  }
}

