import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/home/appbar.dart';
import '../constants/colors.dart';
import '../constants/global_variables.dart';
import '../provider/cart.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final myCart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarGreen,
        title: const Text(
          checkout,
        ),
        actions: const [
          FlHAppBar(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: myCart.itemCount,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(myCart.selectedProducts[index].name),
                      subtitle: Text("${myCart.selectedProducts[index].price} - ${myCart.selectedProducts[index].location}"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(myCart.selectedProducts[index].imgPath),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          myCart.delete(myCart.selectedProducts[index]);
                        },
                        icon: const Icon(Icons.remove),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(btnPink),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${myCart.price}",
              style: const TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
