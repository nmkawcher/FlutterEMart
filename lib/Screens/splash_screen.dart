
import 'dart:async';

import 'package:e_mart/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()) ));
    return Scaffold(
      body: Center(
         child: AnimatedContainer(
             duration: Duration(seconds: 5),
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Image.asset("assets/images/introduction.png"
               , height: 300,width: 300,),
               SizedBox(height: 8,),
               const Text("Well come to E-mart",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.deepOrange,
                 fontSize: 25
               ),),
             ],
           ),
         ),
      ),
      bottomNavigationBar: Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Made by ",style: small),
          Icon(Icons.favorite,color:Colors.red ,),
          Text(" Batch 56",style: small,)
        ],
      ),
    );
  }
}
