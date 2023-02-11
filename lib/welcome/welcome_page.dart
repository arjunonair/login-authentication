import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Welcomepage
 extends StatelessWidget {
  const Welcomepage
  ({super.key});

  @override
   Widget build(BuildContext context) {
   
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold( 
      backgroundColor: Colors.white,
      body: newMethod(w, h),
    );
  }

  Column newMethod(double w, double h) {
    return Column(
      children: 
      [
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
              SizedBox(height: h*0.18
              ,),
              CircleAvatar(radius: 40,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                "img/profile.png"
              ),)
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          margin:const EdgeInsets.only(left :20),
          width: w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          "Welcome",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "a@a.com",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
          ],
        ),
        ),
        SizedBox(
          height: 100,
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
              "Sign out",
             // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.normal,
                color: Colors.white,
                
              ),
            ))
        ),
        SizedBox(height: w*.15),

        // RichText(text: TextSpan(
        //   text: "Signup using other methods",
        //   style: TextStyle(
        //     color: Colors.grey[500],
        //     fontSize: 19,
        //   ),
        // )
        //),
        SizedBox(height: 10,),
      ],
    );
  }
}