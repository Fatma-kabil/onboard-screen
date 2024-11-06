import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedOnboardScreen extends StatefulWidget {
  const AnimatedOnboardScreen({super.key});

  @override
  State<AnimatedOnboardScreen> createState() => _AnimatedOnboardScreenState();
}

class _AnimatedOnboardScreenState extends State<AnimatedOnboardScreen> {
  bool _isout = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: AnimatedScale(
              scale: _isout ? 0 : 1,
              duration: Duration(milliseconds: 250),
              child: Image.asset(images[index]),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                  left:_isout?MediaQuery.of(context).size.width+100 :MediaQuery.of(context).size.width*.25,
                  duration: Duration(milliseconds: 250),
                  child: Text(
                    titles[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9981bd)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(right:_isout?MediaQuery.of(context).size.width+100 :0,
                  duration: Duration(milliseconds: 250),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                       padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                      child: Text(descrition[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 121, 117, 117))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(
                active: index == 0,
              ),
              const SizedBox(
                width: 5,
              ),
              CustomIndicator(
                active: index == 1,
              ),
              const SizedBox(
                width: 5,
              ),
              CustomIndicator(
                active: index == 2,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    index == 2 ? "Register" : "Skip",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 121, 117, 117)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isout = !_isout;
                    });
                    Timer(Duration(milliseconds: 300), () {
                      index = index > 1 ? 0 : index + 1;
                      setState(() {
                        _isout = !_isout;
                      });
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xff9981bd),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      index == 2 ? "Login" : "Next",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(100),
          color:
              active ? Color(0xff9981bd) : Color.fromARGB(255, 121, 117, 117)),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}

List images = [
  'assets/images/page_one.png',
  'assets/images/page_two.png',
  'assets/images/page_three.png'
];
List titles = [
  "Find Your \nInner Balance",
  "Your Health,\nAlways in Reach",
  "Share your \nhealth journey"
];
List descrition = [
  "Immerse yourself in wellness, free from distractions, and enjoy every step towards a healthier you",
  "Keep track of your health, no matter where you are. Your progress is with you, even offline",
  "Share your progress, tips, and routines with family, friends, or the health community for collective growth",
];
