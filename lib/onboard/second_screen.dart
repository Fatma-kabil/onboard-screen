import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset('assets/images/page_two.png'),
      const Text("Your Health,\nAlways in Reach",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold,
      color:Color(0xff9981bd) ),),
      
     const  Padding(
         padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 40),
         child:  Text("Keep track of your health, no matter where you are. Your progress is with you, even offline",
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 20,
              
               color:Color.fromARGB(255, 121, 117, 117) ),),
       )
      
      ],
    );
  }
}