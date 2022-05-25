import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sinaruecommerce/colors/colors.dart';
import 'package:sinaruecommerce/controller/cart_controller.dart';
import 'package:sinaruecommerce/products/cart_products.dart';
import 'package:sinaruecommerce/products/cart_total.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var _razorpay = Razorpay();
  final CartController controller = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("Payment"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CartProducts(),
            CartTotal(),
            CupertinoButton(
                color: primaryColor,
                child: Text(
                  "Pay Amount",
                ),
                onPressed: () {
                  //Payment
                  var options = {
                    'key': 'rzp_test_gGzZvykNuGnFR0',
                    'amount': (double.parse(controller.total) * 100)
                        .toDouble(), //in the smallest currency sub-unit.
                    'name': 'Sinar Utama Payment',
                    'currency': 'IDR',
                    'description': 'Lamandau - Kalimantan Tengah',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '081545035513',
                      'email': '112201805918@mhs.dinus.ac.id'
                    }
                  };
                  _razorpay.open(options);
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _razorpay.clear(); // Removes all listeners
    // TODO: implement dispose
    super.dispose();
  }
}
