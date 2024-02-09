import 'package:flutter/material.dart';
import 'package:shop/components/multi_select_drop_down.dart';
import 'package:shop/components/product_card.dart';
import 'package:shop/components/simple_drop_down.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Footwear Store"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Column(
          children: [
            buildCategories(),
            buildFilterItems(),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductCard(
                        productName: " Shoes",
                        price: "Rs.500/-",
                        imageUrl:
                            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D",
                        offer: "FLat 20% off");
                  }),
            )
          ],
        ));
  }

  Row buildFilterItems() {
    return const Row(
      children: [
        Flexible(child: SimpleDropDown()),
        Flexible(child: MultiSelectDropDown())
      ],
    );
  }

  SizedBox buildCategories() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(6.0),
              child: Chip(label: Text('Category')),
            );
          }),
    );
  }
}
