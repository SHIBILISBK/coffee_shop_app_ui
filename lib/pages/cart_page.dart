import 'package:coffee_shop_app_ui/components/coffee_tile.dart';
import 'package:coffee_shop_app_ui/models/coffee.dart';
import 'package:coffee_shop_app_ui/models/coffee_shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPagee extends StatefulWidget {
  const CartPagee({super.key}) ;

  @override
  State<CartPagee> createState() => _CartPageeState();
}

class _CartPageeState extends State<CartPagee> {
  // remove item from cart
  void  removeFromCart (Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemFromCart(coffee);

  }
  // pay button tapped
  void payNow(){
    /*
     fill out your payment service here
     */
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(child: Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          // heading
          Text("Your cart",style: TextStyle(
              fontSize: 20
          ),),
          // list of cart items
          Expanded(child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
            // get individual cart items
            Coffee eachCoffee = value.userCart[index];
            // return coffee tile
            return CoffeeTile(coffee: eachCoffee, onPressed: () => removeFromCart(eachCoffee), icon: Icon(Icons.delete));
          }),
          ),
          // pay button
             GestureDetector(
               onTap: payNow,
               child: Container(
                 padding: EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text("Pay Now",style: TextStyle(color: Colors.white),)),

            ),
             ),
        ],
      ),
    )));
  }
}
