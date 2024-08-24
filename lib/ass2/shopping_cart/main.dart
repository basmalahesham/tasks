import 'package:flutter/material.dart';
import 'package:optical/ass2/shopping_cart/views/cart_view.dart';
import 'package:optical/ass2/shopping_cart/views/catalog_view.dart';
import 'package:optical/ass2/shopping_cart/views/login_view.dart';

void main() {
  runApp(const ShoppingCart());
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginView.routeName,
      routes: {
        LoginView.routeName: (context) => const LoginView(),
        CatalogView.routeName: (context) => const CatalogView(),
        CartView.routeName: (context) => const CartView(),
      },
    );
  }
}
