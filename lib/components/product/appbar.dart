import 'package:flutter/material.dart';

class FlPAppBar extends StatelessWidget {
  const FlPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 20,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(211, 164, 255, 193),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '8',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 11),
          child: Text(
            "\$104",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
