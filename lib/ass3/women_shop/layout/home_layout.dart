import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/views/dresses_view.dart';
import 'package:optical/ass3/women_shop/views/foot_wear_view.dart';
import 'package:optical/ass3/women_shop/views/hand_bag_view.dart';
import 'package:optical/ass3/women_shop/views/jewellery_view.dart';
import 'package:optical/ass3/women_shop/views/third_view.dart';

import '../models/product_model.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screensWidgets = [
    HandBagView(),
  ];
  List<String> categories = ['hand Bag', 'Dresses', 'jewellery', 'Foot Wear'];
  int selectedIndex = 0;
  Widget screenWidget() {
    switch (selectedIndex) {
      case 1:
        return DressesView();
      case 2:
        return JewelleryView();
      case 3:
        return FootWearView();
      default:
        return HandBagView();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ThirdView.routeName,
               arguments: ProductModel(),
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Women',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categories[index],
                          style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        ),
                        Container(
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.transparent,
                          height: 2,
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
              ),
            ),
            Expanded(child: screenWidget()),
          ],
        ),
      ),
    );
  }
}
