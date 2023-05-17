import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login/Login.dart';
import 'components/MyButton.dart';
import 'components/My_textField.dart';

void main (){
  runApp(MaterialApp(home:Registration() ,debugShowCheckedModeBanner: false,));
}

class Registration extends StatelessWidget {
  // text editing controller
  final email = TextEditingController();
  final password = TextEditingController();
  final cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              SizedBox(height: 50,),
              Icon(Icons.lock_outline,size: 100,),
              SizedBox(height: 50,),

              // create an account

              Text("Create an account,it\'s free",style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
              ),),

              SizedBox(height: 25,),

              // email text

              My_Text_Field(
                controller: email,
                hintText: "Email",
                obscureText: false,
                suffixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 10,),

              // password text

              My_Text_Field(
                  controller: password,
                  hintText: "Password",
                  suffixIcon: Icon(Icons.visibility_outlined),
                  obscureText: true),
              SizedBox(height: 10,),

              // conform password text

              My_Text_Field(
                  controller: cpass,
                  hintText: "Conform Password",
                  suffixIcon: Icon(Icons.visibility_outlined),
                  obscureText: true),
              SizedBox(height: 30,),

              // sign in button

              My_Button(),

              SizedBox(height: 15,),

              // already have an account

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                      child:Text("Login",style: TextStyle(
                          color: Colors.blue,fontWeight: FontWeight.bold
                      ),) )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
