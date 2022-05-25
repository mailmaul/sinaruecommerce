import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinaruecommerce/colors/colors.dart';
import 'package:sinaruecommerce/products/cart_screen.dart';
import 'package:sinaruecommerce/products/catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: primaryColor,
        middle: Text("Catalog"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: CupertinoButton(
                color: primaryColor,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                child: Text("Go To Cart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
