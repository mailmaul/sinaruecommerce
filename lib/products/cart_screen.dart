import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinaruecommerce/colors/colors.dart';
import 'package:sinaruecommerce/payment/payment.dart';
import 'package:sinaruecommerce/products/cart_products.dart';
import 'package:sinaruecommerce/products/cart_total.dart';
import 'package:sinaruecommerce/products/catalog_screen.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("My Cart"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CartProducts(),
          CartTotal(),
          CupertinoButton(
            color: primaryColor,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
            },
            child: Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
