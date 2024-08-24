import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage(
                'assets/images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
          ),
          ListTile(
            trailing: SizedBox(
              width: 50,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text('41'),
                ],
              ),
            ),
            title: Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Kandersteg,Switzerland',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone,color: Colors.blue,),
                    SizedBox(height: 10,),
                    Text('Call',style: TextStyle(color: Colors.blue,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.send_rounded,color: Colors.blue,),
                    SizedBox(height: 10,),
                    Text('Route',style: TextStyle(color: Colors.blue,),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    SizedBox(height: 10,),
                    Text('Share',style: TextStyle(color: Colors.blue,),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
            child: Text(
              'Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network or may also be sent via satellite or Internet connection.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
