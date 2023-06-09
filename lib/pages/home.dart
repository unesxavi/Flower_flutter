import 'package:flower_flutter/constants/colors.dart';
import 'package:flutter/material.dart';
import '../components/drawer.dart';
import '../components/home/appbar.dart';
import '../components/home/listproducts.dart';
import '../constants/global_variables.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const FlDrawer(),
      appBar: AppBar(
        backgroundColor: appBarGreen,
        title: const Text(
          appName,
        ),
        actions: const [
          FlHAppBar(),
        ],
      ),
      body: const FlHProducts(),
    );
  }
}
