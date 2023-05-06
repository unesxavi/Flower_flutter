class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item({
    required this.imgPath,
    required this.name,
    required this.price,
    this.location = "Main branch",
  });
}

final List<Item> items = [
  Item(name: "product1", price: 17.99, imgPath: "assets/images/products/1.webp", location: "Ali shop"),
  Item(name: "product2", price: 12.99, imgPath: "assets/images/products/2.webp"),
  Item(name: "product3", price: 10.99, imgPath: "assets/images/products/3.webp"),
  Item(name: "product4", price: 11.99, imgPath: "assets/images/products/4.webp"),
  Item(name: "product5", price: 12.99, imgPath: "assets/images/products/5.webp"),
  Item(name: "product6", price: 14.99, imgPath: "assets/images/products/6.webp"),
  Item(name: "product7", price: 15.99, imgPath: "assets/images/products/7.webp"),
  Item(name: "product8", price: 13.99, imgPath: "assets/images/products/8.webp"),
];
