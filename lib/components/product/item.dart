import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GridTile(
        footer: GridTileBar(
          // backgroundColor: const Color.fromARGB(255, 62, 94, 70),
          trailing: IconButton(
            color: const Color.fromARGB(255, 62, 94, 70),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
          leading: const Text("\$12.99"),
          title: const Text(
            "",
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -3,
              bottom: -9,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image.asset("assets/images/products/1.webp"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
