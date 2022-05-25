import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinaruecommerce/main.dart';
import 'package:sinaruecommerce/utils.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback? onClickedSignUp;

  const LoginWidget({Key? key, this.onClickedSignUp}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: emailController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Email"),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length < 6
                  ? "Enter min. 6 characters"
                  : null,
              obscureText: false,
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: passwordController,
              cursorColor: Colors.white,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Password"),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length < 6
                  ? "Enter min. 6 characters"
                  : null,
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: signIn,
              icon: Icon(Icons.lock_open),
              label: Text(
                "Sign In",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black45, fontSize: 15),
                    text: "No Account? ",
                    children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignUp,
                      text: "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black))
                ]))
          ],
        ),
      );

  Future signIn() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
