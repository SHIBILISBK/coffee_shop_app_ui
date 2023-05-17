import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Login/login.dart';

class My_Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    },
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        minimumSize: Size(450, 70),
      ),
      child: Text(      "Sign in"      ,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
