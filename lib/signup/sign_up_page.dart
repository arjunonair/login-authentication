// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../login/login_page.dart';
import 'package:taxi/authentication/auth.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  List images = ["g.png", "t.png", "f.png"];
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();

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
            image: AssetImage("img/signup.png"),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.18,
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("img/profile.png"),
              )
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: 21, right: 21),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Hello",
                //   style: TextStyle(
                //     fontSize: 70,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // Text(
                //   "Sign into your account",
                //   style: TextStyle(fontSize: 20, color: Colors.grey),
                // ),
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
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        hintText: "Enter your email id",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.deepOrangeAccent,
                        ),
                        // contentPadding: EdgeInsets.all(20),
                        // hintStyle: TextStyle(
                        //   color: Color(0xFFF00),
                        //),
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
                    controller: passcontroller,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.deepOrangeAccent,
                        ),
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
              ],
            )),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            Auth.instance.register(
                emailcontroller.text.trim(), passcontroller.text.trim());
          },
          child: Container(
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
              // ignore: prefer_const_constructors
              child: Center(
                  child: Text(
                "Sign Up",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ))),
        ),
        SizedBox(
          height: 8,
        ),
        RichText(
            text: TextSpan(
                text: "Have an account?",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[500],
                ),
                recognizer: TapGestureRecognizer()..onTap = () => Get.back())),
        SizedBox(height: w * .15),
        RichText(
            text: TextSpan(
          text: "Signup using other methods",
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 19,
          ),
        )),
        SizedBox(
          height: 10,
        ),
        Wrap(
          children: List<Widget>.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.all(
                7.0,
              ),
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.grey[500],
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("img/" + images[index]),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
