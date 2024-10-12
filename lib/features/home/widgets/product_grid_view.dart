import 'package:flutter/material.dart';
import 'package:trendify/features/home/widgets/product_item.dart';

class ResponsiveGridView extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  ResponsiveGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    var screenWidth = MediaQuery.of(context).size.width;

    // Define the number of columns based on the screen width
    int crossAxisCount = (screenWidth / 150).floor(); // Each item will be around 150px wide
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, // Dynamic column count
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 100.0,
          childAspectRatio: 1.5, // Adjust the item aspect ratio (width/height)
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return const CustomCard();
        },
      ),
    );
  }
}