import 'package:flutter/material.dart';

class ThiredScreen extends StatelessWidget {
  const ThiredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/page_three.png'),
        const Text(
          "Share your \nhealth journey",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff9981bd)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            "Share your progress, tips, and routines with family, friends, or the health community for collective growth",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 121, 117, 117)),
          ),
        )
      ],
    );
  }
}
