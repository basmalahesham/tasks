import 'package:flutter/material.dart';
import 'package:optical/ass5/honey_boom/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});
  static const String routeName = "productDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffdb100),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xfffdb100),
                ),
              ),
              Image(
                image: AssetImage(args.image!),
                width: 500,
                height: 500,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  args.title!,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),
                ),
                Text(
                  args.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.black54,),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
