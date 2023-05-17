import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Signup/signup.dart';
import 'components/Square_tile.dart';
import 'components/myTextfield.dart';
import 'components/my_Button.dart';

void main(){
  runApp(MaterialApp(home: LoginPage(),debugShowCheckedModeBanner: false,));
}
class LoginPage extends StatelessWidget{
  // text editing controller

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


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

              // welcome back ,you've been missed!

              Text("Welcome back,you\'ve been missed!",style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
              ),),

              SizedBox(height: 25,),

              // email textfield

              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
                suffixIcon: Icon(Icons.email_outlined),
              ),

              SizedBox(height: 10,),

              // password textfield

              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
                suffixIcon: Icon(Icons.visibility_outlined),
              ),
              SizedBox(height: 15,),

              // Forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Forgot Password?",style: TextStyle(color: Colors.grey[600]),),
                  ],
                ),
              ),
              SizedBox(height: 30,),

              // Log in button

              MyButton(),

              SizedBox(height: 30,),

              // or continue with

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child:Text("Or continue with",style: TextStyle(color: Colors.grey[700]),) ,
                    ),
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                )  ,
              ),
              SizedBox(height: 30,),

              // google + apple sign in buttons

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: "lib/icons/google.png"),
                  SizedBox(width: 25,),
                  // apple button
                  SquareTile(imagePath: "lib/icons/apple.png"),




                ],
              ),
              SizedBox(height: 30,),
              // not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                  },
                      child:  Text("Register now",style: TextStyle(
                          color: Colors.blue,fontWeight:FontWeight.bold
                      ),))

                ],
              )


            ],
          ),
        ),
      ),
    );
  }

}