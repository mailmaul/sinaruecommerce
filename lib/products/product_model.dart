import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final int price;
  final String imageUrl;
  final int stock;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
        name: snap['name'],
        price: snap['price'],
        imageUrl: snap['imageUrl'],
        stock: snap['stock']);
    return product;
  }

  // static const List<Product> products = [
  //   Product(
  //       name: "Lampu",
  //       price: 15000,
  //       imageUrl:
  //           "https://www.jualbuy.com/uploads/product_image/variant_image/2021-01-15/1610689116-images_(1).jpeg",
  //       stock: 15),
  //   Product(
  //       name: "MCB",
  //       price: 20000,
  //       imageUrl:
  //           "https://n2.sdlcdn.com/imgs/h/5/j/Schneider-MCB-One-Pole-2-SDL295309435-1-b3f0b.jpg",
  //       stock: 15),
  //   Product(
  //       name: "Kabel",
  //       price: 25000,
  //       imageUrl:
  //           "https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/3/12574622/12574622_8fe05ff7-cac6-4de3-92e8-e686352bb28d_400_400",
  //       stock: 15),
  // ];
}
