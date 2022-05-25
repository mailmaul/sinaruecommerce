import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinaruecommerce/controller/cart_controller.dart';
import 'package:sinaruecommerce/controller/product_controller.dart';

class CatalogProducts extends StatelessWidget {
  final productController = Get.put(ProductController());
  final Stream<QuerySnapshot> products =
      FirebaseFirestore.instance.collection('products').snapshots();
  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CatalogProductCard(index: index);
          },
        ),
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage:
                NetworkImage(productController.products[index].imageUrl),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              productController.products[index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: Text('Rp. ${productController.products[index].price}'),
          ),
          Expanded(
            child: Text('Stok : ${productController.products[index].stock}'),
          ),
          IconButton(
            onPressed: () {
              cartController.addProduct(productController.products[index]);
            },
            icon: Icon(Icons.add_circle),
          )
        ],
      ),
    );
  }
}
