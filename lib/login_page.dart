import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'sign_up_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( child: newMethod(w, h),),
    );
  }

  Column newMethod(double w, double h) {
    return Column(
      children: [
        Container(
          width: w,
          height: h * 0.3,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
            // ignore: prefer_const_constructors
            image: AssetImage("img/loginimg.png"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
            margin: const EdgeInsets.only(left: 21, right: 21),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(
                  height: 50,
                ),
               Container(
                  decoration: BoxDecoration(
                    
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.3),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(

                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                            
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  decoration: BoxDecoration(
                    
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.3),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Sign into your account",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                )
              ],
            )),
        SizedBox(
          height: 40,
        ),
        Container(
            width: w * .5,
            height: h * .08,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage("img/loginbtn.png"),
                  fit: BoxFit.cover,
                )),
                child: Center(
            child: Text(
              "Sign in",
             // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.normal,
                color: Colors.white,
                
              ),
            ))
        ),
        SizedBox(height: w*.12),

        RichText(text: TextSpan(
          text: "Don\'t have an account? ",
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 20,
          ),
          children : [
           TextSpan(
              text: "Create",
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20
                ),
              recognizer: TapGestureRecognizer()..onTap=()
              {
                Get.to(()=>Signup_page());
              }
            )
          ]
        )
        )
      ],
    );
  }
}
