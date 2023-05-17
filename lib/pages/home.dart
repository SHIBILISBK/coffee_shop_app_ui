import 'package:coffee_shop_app_ui/button.dart';
import 'package:coffee_shop_app_ui/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Signup and Login/Login/Login.dart';




class HomeFace extends StatefulWidget {
  const HomeFace({Key? key}) : super(key: key);

  @override
  State<HomeFace> createState() => _HomeFaceState();
}

class _HomeFaceState extends State<HomeFace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100,top: 150,left: 30),
        child: Center(
          child: Column(
            children: [
              Image.asset("lib/images/espresso.png",width: 200,height: 200,),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20),
                child: Text("Brew Day",style: GoogleFonts.actor(textStyle: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.brown)),),
              ),
              Padding(padding: EdgeInsets.only(top: 10,right: 20),
              child: Text("How Do You Like Your Coffee?",style: TextStyle(fontSize: 25,color: Colors.brown[400]),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage() ));
                },
                    child: Text("Enter Shop"),
                style: buttonPrimary
                ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
