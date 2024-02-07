import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;
  final String imageUrl;
  final String offer;
  const ProductCard(
      {super.key,
      required this.productName,
      required this.price,
      required this.imageUrl, required this.offer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 120,
            ),
            SizedBox(height: 9,),
            Text(productName),
            SizedBox(height: 9,),

            Text(price),
            SizedBox(height: 9,),

            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(color: Colors.green,
              borderRadius: BorderRadius.circular(4)),
              child:  Text(offer),
            )
          ],
        ),
      ),
    );
  }
}
