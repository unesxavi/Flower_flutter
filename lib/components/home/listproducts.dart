import 'package:flutter/material.dart';
import '../../model/item.dart';

class FlHProducts extends StatelessWidget {
  const FlHProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 33,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
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
                leading:  Text("\$${items[index].price}"),
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
                      child: Image.asset(items[index].imgPath),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
