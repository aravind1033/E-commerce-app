import 'package:flutter/material.dart';

import '../utils/utility_widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String price;
  const ProductDetailsPage(
      {super.key,
      required this.productDescription,
      required this.productName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://rukminim2.flixcart.com/image/850/1000/l432ikw0/shoe/6/0/l/-original-imagf255et5szt5s.jpeg?q=90&crop=false",
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              ///Text widget in utility
              UtilityWidgets.text(text: productDescription, fontsize: 15),
              const SizedBox(
                height: 20,
              ),

              ///Text widget in utility
              UtilityWidgets.text(text: productDescription),
              const SizedBox(
                height: 20,
              ),

              ///Text widget in utility
              UtilityWidgets.text(text: price, fontsize: 15),
              const SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    labelText: 'Enter your billing address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(),
                  child: UtilityWidgets.text(text: "Buy Now"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
