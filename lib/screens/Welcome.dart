import 'package:flutter/material.dart';
import 'HomePage.dart';

class WelcomePage extends StatefulWidget {
  
  @override
  _WelcomePageState createState() => _WelcomePageState();

}

class _WelcomePageState extends State<WelcomePage> {

 var selectedItem = 0;
  List pages = [
    HomePage(),
     HomePage(),
      HomePage(),
       HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (currIndex) {
          setState(() {
            selectedItem = currIndex;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.video_label_outlined,
              ),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepOrange),
              )),
          BottomNavigationBarItem(
              // backgroundColor: Colors.white,
              icon: Icon(
                Icons.map_outlined,
              ),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepOrange),
              )),
          BottomNavigationBarItem(
              // backgroundColor: Colors.white,
              icon: Icon(Icons.location_on_outlined),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepOrange),
              )),
          BottomNavigationBarItem(
              // backgroundColor: Colors.white,
              icon: Icon(
                Icons.menu,
              ),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.deepOrange),
              ),
              ),
        ],
      ),
    );
  }
}