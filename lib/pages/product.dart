import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../components/product/appbar.dart';
import '../constants/colors.dart';
import '../constants/global_variables.dart';
import '../model/item.dart';

class Product extends StatefulWidget {
  final Item product;
  const Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const FlDrawer(),
      appBar: AppBar(
        backgroundColor: appBarGreen,
        title: const Text(
          appName,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          FlPAppBar(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            const SizedBox(height: 11),
            Text(
              "\$${widget.product.price}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child:  Text(
                      widget.product.label,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 26,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                    ],
                  ),
                  const SizedBox(width: 66),
                  Row(
                    children: [
                      const Icon(
                        Icons.edit_location,
                        size: 26,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        widget.product.location,
                        style: const TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                widget.product.content,
                style: const TextStyle(
                  fontSize: 18,
                ),
                maxLines: isShowMore ? 3 : null,
                overflow: TextOverflow.fade,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? "Show more" : "Show less",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}