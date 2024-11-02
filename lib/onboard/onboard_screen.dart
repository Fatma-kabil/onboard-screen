import 'package:flutter/material.dart';
import 'package:taskone/onboard/first_screen.dart';
import 'package:taskone/onboard/second_screen.dart';
import 'package:taskone/onboard/thired_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                children: [FirstScreen(), SecondScreen(), ThiredScreen()]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(
                active: index == 0,
              ),
            const  SizedBox(width: 5,),
              CustomIndicator(
                active: index == 1,
              ),
              const  SizedBox(width: 5,),
              CustomIndicator(
                active: index == 2,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 InkWell(
                 
                  child: Text(
                     index==2?"Register" : "Skip",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 121, 117, 117)),
                  ),
                ),
                InkWell(
                   onTap: () {
                    _controller.animateToPage(index+1,  duration:const Duration(microseconds: 250), curve: Curves.linear);
                  },
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    decoration: BoxDecoration(
                        color:const Color(0xff9981bd),
                        borderRadius: BorderRadius.circular(100)),
                    child:  Text(
                     index==2?"Login" :"Next",
                      style:const TextStyle(
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
