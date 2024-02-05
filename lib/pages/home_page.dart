import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Footware Store"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
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
            ),
          ],
        ));
  }
}
