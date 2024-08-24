import 'package:flutter/material.dart';
import 'package:optical/ass2/shopping_cart/models/model.dart';
import 'package:optical/ass2/shopping_cart/views/cart_view.dart';
import 'package:optical/ass2/shopping_cart/views/widgets/custom_list_tile.dart';

/*class CatalogView extends StatefulWidget {
  const CatalogView({super.key});

  static const String routeName = "catalog_view";

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  List<CartModel> list = [
    CartModel(
      color: Colors.red,
      title: 'Red',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.green,
      title: 'Green',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.blue,
      title: 'Blue',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.pink,
      title: 'Pink',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.orange,
      title: 'Orange',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.amber,
      title: 'Amber',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.indigo,
      title: 'Indigo',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.yellow,
      title: 'Yellow',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.deepPurple,
      title: 'DeepPurple',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.pinkAccent,
      title: 'PinkAccent',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.red,
      title: 'Red',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.green,
      title: 'Green',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.blue,
      title: 'Blue',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.pink,
      title: 'Pink',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.orange,
      title: 'Orange',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.amber,
      title: 'Amber',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.indigo,
      title: 'Indigo',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.yellow,
      title: 'Yellow',
      subtitle: 20,
    ),
    CartModel(
      color: Colors.deepPurple,
      title: 'DeepPurple',
      subtitle: 10,
    ),
    CartModel(
      color: Colors.pinkAccent,
      title: 'PinkAccent',
      subtitle: 20,
    ),
  ];
  List<bool> c = [
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
  ];
  bool click = false;

  List<String> selectedColorsNames = [];

  int totalPrice = 0;
  addListColorsNames(int index) {
    setState(() {
      selectedColorsNames.add(list[index].title);
    });
  }
  removeListColorItem(int index) {
    setState(() {
      selectedColorsNames.remove(list[index].title);
    });
  }

  addTotalPrice(int index) {
    setState(() {
      totalPrice += list[index].subtitle;
    });
  }
  removeItemPrice(int index) {
    setState(() {
      totalPrice -= list[index].subtitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Catalog',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              *//*Navigator.pushNamed(
                context,
                CartView.routeName,
               // arguments: CartModel(),
              );*//*
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CartView(list: selectedColorsNames, total: totalPrice),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CustomListTile(
          onTap: () {
            setState(() {
              //click = true;
              addListColorsNames(index);
              addTotalPrice(index);
              // removeListColorItem(index);
              // removeItemPrice(index);
              list[index];
              c[index] = !c[index];
            });
          },
          model: list[index],
          child:
              c[index] ? const Text('Add') : const Icon(Icons.check),
        ),
        itemCount: list.length,
      ),
    );
  }
}*/
class CatalogView extends StatefulWidget {
  const CatalogView({super.key});

  static const String routeName = "catalog_view";

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Catalog',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                CartView.routeName,
               // arguments: CartModel(),
              );
              /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CartView(),
                ),
              );*/
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CustomListTile(
          index: index,
          model: list[index],
        ),
        itemCount: list.length,
      ),
    );
  }
}