import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset('assets/images/page_one.png'),
      const Text("Find Your \nInner Balance",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30,
      fontWeight: FontWeight.bold,
      color:Color(0xff9981bd) ),),
      
      const Padding(
         padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 40),
         child:  Text("Immerse yourself in wellness, free from distractions, and enjoy every step towards a healthier you",
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 20,
              
               color:Color.fromARGB(255, 121, 117, 117) ),),
       )
      
      ],
    );
  }
}
