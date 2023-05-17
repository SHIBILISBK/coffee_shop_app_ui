import 'package:coffee_shop_app_ui/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CoffeeShop(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeFace(),
    ),

    );
  }
}
