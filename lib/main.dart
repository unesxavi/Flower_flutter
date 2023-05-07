import 'package:flower_flutter/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:flower_flutter/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Cart();
      },
      child: MaterialApp(
        title: 'Flower',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
