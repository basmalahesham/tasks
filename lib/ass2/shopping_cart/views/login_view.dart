import 'package:flutter/material.dart';
import 'package:optical/ass2/shopping_cart/views/catalog_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const String routeName = "login_view";
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  // TextEditingController? emailController = TextEditingController();
  // TextEditingController? passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email';
                  }
                  var regex = RegExp(
                      r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)");
                  if (!regex.hasMatch(value)) {
                    return 'enter a valid email address';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Dash',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your password';
                  }
                  if (value.length <= 6) {
                    return 'password must be at least 6 characters';
                  }
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, CatalogView.routeName);
                    /*Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CatalogView(),
                      ),
                    );*/
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('success'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Enter',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
