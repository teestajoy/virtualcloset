import 'package:flutter/material.dart';

import '../pages/homepage.dart';
import 'root_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const RootPage()));
  }
final PageController _pageController = PageController(initialPage: 0);
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(padding: const EdgeInsets.only(right:20,top:20),
      child:InkWell(
        onTap:()=>null,
            child: const Text('Next',style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400
      ),)
      ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex=page;
              });
            },
            controller: _pageController,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50,right: 50,bottom: 80),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                   image: AssetImage('images/vclogo.png'),
                    ),
                    SizedBox(height :20,),
                    // Text('Virtual Closet',
                    //   style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,),
                    // ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
