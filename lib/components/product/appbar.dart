import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../pages/checkout.dart';
import '../../provider/cart.dart';

class FlPAppBar extends StatelessWidget {
  const FlPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final myCart = Provider.of<Cart>(context);

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
                child: Text(
                  "${myCart.itemCount}",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Checkout(),
                  ),
                );
              },
              icon: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Text(
            "\$${myCart.price}",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
