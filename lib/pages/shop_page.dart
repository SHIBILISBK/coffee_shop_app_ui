import 'package:coffee_shop_app_ui/components/coffee_tile.dart';
import 'package:coffee_shop_app_ui/models/coffee.dart';
import 'package:coffee_shop_app_ui/models/coffee_shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPagee extends StatefulWidget {
  const ShopPagee({super.key}) ;

  @override
  State<ShopPagee> createState() => _ShopPageeState();
}

class _ShopPageeState extends State<ShopPagee> {
  // add coffee to cart
  void addToCart(Coffee coffee){
    // add to cart
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    // let user know it add been successfully add
    showDialog(context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.brown,
          title: Text("Successfully added to cart",style: TextStyle(color: Colors.white),),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30,left: 25),
        child: Column(children: [
          // heading message
          Text("How would you like your coffee?",style: TextStyle(fontSize: 20),),
          SizedBox(height: 25,),
          // list of coffee to buy
          Expanded(child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context,index){
            // get individual coffee
            Coffee eachCoffee = value.coffeeShop[index];

            // return the tile for this coffee
            return CoffeeTile(coffee: eachCoffee,
            icon: Icon(Icons.add),
            onPressed: () => addToCart(eachCoffee),
            );

          }),)
        ],),
      ),
    ));
  }
}
