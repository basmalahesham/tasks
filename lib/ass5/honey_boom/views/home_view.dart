import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/models/product_model.dart';
import 'package:optical/ass5/honey_boom/views/widgets/custom_grid_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routeName = "home";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> titles = <String>[
    'New Hot!',
    'Popular',
    'Best Seller',
  ];

  List<ProductModel> productModel = [
    ProductModel(
      image: 'assets/images/honeyBoom/image0.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image1.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image2.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image3.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image4.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
  ];

  List<ProductModel> productModel2 = [
    ProductModel(
      image: 'assets/images/honeyBoom/image0.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image1.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image2.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image3.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image4.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
  ];

  List<ProductModel> productModel3 = [
    ProductModel(
      image: 'assets/images/honeyBoom/image0.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image1.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image2.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image3.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
    ProductModel(
      image: 'assets/images/honeyBoom/image4.png',
      title: 'Honey',
      price: 233,
      id: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfffdb100),
          leading: const Icon(
            Icons.dehaze,
            color: Colors.white,
          ),
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
          ],
          title: const Column(
            children: [
              Image(
                image: AssetImage(
                  'assets/images/honeyBoom/splash-removebg-preview.png',
                ),
                width: 30,
                height: 30,
              ),
              Text(
                'HoneyBoom!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          centerTitle: true,
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: <Widget>[
              Tab(
                text: titles[0],
              ),
              Tab(
                text: titles[1],
              ),
              Tab(
                text: titles[2],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              CustomGridView(productModel: productModel),
              CustomGridView(productModel: productModel2),
              CustomGridView(productModel: productModel3),
            ],
          ),
        ),
      ),
    );
  }
}
