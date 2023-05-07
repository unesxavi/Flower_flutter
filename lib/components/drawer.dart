import 'package:flower_flutter/constants/colors.dart';
import 'package:flutter/material.dart';

import '../pages/checkout.dart';
import '../pages/home.dart';

class FlDrawer extends StatelessWidget {
  const FlDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/flower.jpg"),
                  //   fit: BoxFit.cover,
                  // ),
                  color: appBarGreen,
                ),
                accountName: Text(
                  "Aikini",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                accountEmail: Text(
                  "contact@aikini.com",
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/aikini.jpeg"),
                ),
              ),
              ListTile(
                title: const Text(
                  "Home",
                ),
                leading: const Icon(
                  Icons.home,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  "My products",
                ),
                leading: const Icon(
                  Icons.add_shopping_cart,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Checkout(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  "About",
                ),
                leading: const Icon(
                  Icons.help_center,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  "Logout",
                ),
                leading: const Icon(
                  Icons.exit_to_app,
                ),
                onTap: () {},
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  "Developed by Aikini © 2023",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
