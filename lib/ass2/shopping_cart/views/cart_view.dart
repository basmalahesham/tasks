import 'package:flutter/material.dart';
import 'package:optical/ass2/shopping_cart/models/model.dart';

/*
class CartView extends StatelessWidget {
  const CartView({
    super.key,
    required this.list,
    required this.total,
  });

  static const String routeName = 'cart_view';
  final List<String> list;

  final int total;
  @override
  Widget build(BuildContext context) {
    //var args = ModalRoute.of(context)!.settings.arguments as CartModel;
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '- ${list[index]}',
                    ),
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.black87,
              thickness: 5,
            ),
            Text(
              "\$${total.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}
*/
class CartView extends StatelessWidget {
  const CartView({
    super.key,

  });

  static const String routeName = 'cart_view';
  // final List<String> list;
  //
  // final int total;
  @override
  Widget build(BuildContext context) {
    //var args = ModalRoute.of(context)!.settings.arguments as CartModel;
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: selectedColorsNames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '- ${selectedColorsNames[index]}',
                    ),
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.black87,
              thickness: 5,
            ),
            Text(
              "\$${totalPrice.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}
