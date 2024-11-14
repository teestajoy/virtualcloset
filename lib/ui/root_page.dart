import 'package:flutter/material.dart';
import 'package:vc1/pages/clothes.dart';
import 'package:vc1/pages/create.dart';
import 'package:vc1/pages/homepage.dart';
import 'package:vc1/pages/outfits.dart';
import 'package:vc1/pages/profile.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex =0;
  List<Widget> pages=const[
    HomePage(),
    Clothes(),
    Create(),
    Outfits(),
    Profile(),
  ];
  List<IconData>iconList=[
    Icons.home,
    Icons.checkroom,
    Icons.add,
    Icons.door_sliding,
    Icons.person,
  ];
List<String> titleList=[
  'Home',
  'Your Clothes',
  'Create',
  'Your Outfits',
  'Profile',

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleList[_currentIndex],style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),),
            const Icon(Icons.notifications,color: Colors.black, size: 30.0,)
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
         currentIndex:  _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            backgroundColor: Colors.black,
              ),

          BottomNavigationBarItem(
            icon: Icon(Icons.checkroom),
            label: 'Clothes',
            backgroundColor: Colors.black,
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create',
            backgroundColor: Colors.red,
           ),

          BottomNavigationBarItem(
            icon: Icon(Icons.door_sliding),
            label: 'Outfits',
            backgroundColor: Colors.black,
            ),


          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black,
           ),

        ],
        onTap: (index){
           setState(() {
             _currentIndex= index;
           });

        },
      ),
    );
  }
}
