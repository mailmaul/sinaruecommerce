import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinaruecommerce/colors/colors.dart';
import 'package:sinaruecommerce/products/catalog_screen.dart';
import 'package:sinaruecommerce/products/product_overview.dart';

import 'controller/cart_controller.dart';
import 'controller/product_controller.dart';

class HomePage extends StatefulWidget {
  final productController = Get.put(ProductController());
  final Stream<QuerySnapshot> products =
      FirebaseFirestore.instance.collection('products').snapshots();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool homeColor = true;

  bool cartColor = false;

  bool aboutColor = false;

  bool contactusColor = false;

  Widget product1() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductOverview(
                    productImage: ("assets/images/mcb1.png"),
                    productName: ("MCB Schneider 60A"),
                    productPrice: (55000),
                    productStok: (78),
                  ),
                ),
              );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/mcb1.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MCB Schneider 60A",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 55.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '78 Pcs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget product2() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();
    final int index;

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ProductOverview(
              //       productImage: (_products[0]["productImage"]),
              //       productName: (_products[0]["productName"]),
              //       productPrice: (_products[0]["productPrice"]),
              //       productStok: (_products[0]["productStok"]),
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/mcb2.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BARDI Wall Socket",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 190.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '30 Pcs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget product3() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();
    final int index;

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ProductOverview(
              //       productImage: (_products[0]["productImage"]),
              //       productName: (_products[0]["productName"]),
              //       productPrice: (_products[0]["productPrice"]),
              //       productStok: (_products[0]["productStok"]),
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/mcb3.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BARDI Sakelar Socket",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 80.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '22 Pcs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget product4() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();
    final int index;

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ProductOverview(
              //       productImage: (_products[0]["productImage"]),
              //       productName: (_products[0]["productName"]),
              //       productPrice: (_products[0]["productPrice"]),
              //       productStok: (_products[0]["productStok"]),
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/mcb4.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hannoch LED 3W",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 35.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '150 Pcs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget product5() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();
    final int index;

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ProductOverview(
              //       productImage: (_products[0]["productImage"]),
              //       productName: (_products[0]["productName"]),
              //       productPrice: (_products[0]["productPrice"]),
              //       productStok: (_products[0]["productStok"]),
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/mcb5.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BARDI Smart LED",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 120.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '50',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget product6() {
    final cartController = Get.put(CartController());
    final ProductController productController = Get.find();
    final int index;

    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 235,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => ProductOverview(
              //       productImage: (_products[0]["productImage"]),
              //       productName: (_products[0]["productName"]),
              //       productPrice: (_products[0]["productPrice"]),
              //       productStok: (_products[0]["productStok"]),
              //     ),
              //   ),
              // );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/cable1.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kabel NYA 1,5 100M",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rp. 175.000',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Stock :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    '50 Pcs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome"),
                        SizedBox(
                          child: Text(
                            "${user.email}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                selected: homeColor,
                leading: Icon(Icons.home_outlined),
                title: Text("Home"),
                onTap: () {
                  setState(() {
                    homeColor = true;
                    contactusColor = false;
                    cartColor = false;
                    aboutColor = false;
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.shop),
                title: Text("Catalog Product"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CatalogScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("My Cart"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CatalogScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.phone_outlined),
                title: Text("ContactUs"),
              ),
              ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text("Logout"),
                  onTap: () => FirebaseAuth.instance.signOut()),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Homepage"),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CatalogScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 17,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/banner1.png'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 250, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/logo.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'On all Lamps product',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feature Product'),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  product1(),
                  product2(),
                  product3(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Product'),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  product4(),
                  product5(),
                  product6(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
