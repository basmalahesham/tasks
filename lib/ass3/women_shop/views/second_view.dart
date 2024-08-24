import 'package:flutter/material.dart';
import 'package:optical/ass3/women_shop/models/product_model.dart';
import 'package:optical/ass3/women_shop/views/third_view.dart';
import 'package:optical/ass3/women_shop/views/widgets/custom_color_container.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  static const String routeName = "second_view";

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  int index = 0;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: args.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        actions:  [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const SizedBox(
            width: 20,
          ),
          Badge(
            label: Text(count.toString()),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, ThirdView.routeName,arguments: args);

              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Aristocratic Hand Bag',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  args.title!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$${args.price.toString()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 255),
            padding: const EdgeInsets.only(top: 130, left: 20),
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Color',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            CustomColorContainer(
                              color: args.color!,
                              isSelected: true,
                            ),
                             CustomColorContainer(
                              color: const Color(0xFF5A86EA),
                            ),
                             CustomColorContainer(
                              color: const Color(0xFFB6E2D8),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '12 C',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printting and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. when an unknown printer took a gallery',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index-=1;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10,),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text('0$index',style: const TextStyle(color: Colors.grey,fontSize: 20),),
                    const SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index+=1;
                        });
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 200,),
                    const CircleAvatar(backgroundColor: Colors.red,child: Icon(Icons.favorite,color: Colors.white,),),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10,),
                        border: Border.all(
                          color: args.color!,
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_cart_outlined,color: args.color,),
                      ),
                    ),
                    const SizedBox(width: 40,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count+=1;
                          //Navigator.pushNamed(context, ThirdView.routeName,arguments: args);

                        });
                      },
                      child: Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15,),
                          color: args.color
                        ),
                        child: const Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 310,
            left: 130,
            child: Hero(
              tag: args.id!,
              child: Image.asset(
                args.image!,
                width: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
