import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinaruecommerce/controller/cart_controller.dart';
import 'package:sinaruecommerce/products/product_model.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();
  CartProducts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                quantity: controller.products.values.toList()[index],
                product: controller.products.keys.toList()[index],
                index: index,
              );
            }),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController? controller;
  final Product? product;
  final int? quantity;
  final int? index;

  const CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
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
            backgroundImage: NetworkImage(product!.imageUrl),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(product!.name),
          ),
          IconButton(
            onPressed: () {
              controller!.removeProduct(product!);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Text('$quantity'),
          IconButton(
            onPressed: () {
              controller!.addProduct(product!);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
