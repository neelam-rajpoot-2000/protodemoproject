import 'package:flutter/material.dart';

import 'flipkart.dart';
import 'practo.dart';

class Box extends StatefulWidget {
  const Box({Key? key}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _selectedIndex=1;
  @override
  Widget build(BuildContext context) {

    TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = <Widget>[
      PractoFile(),
      MyRewards(),
      PractoFile(),
      MyRewards(),


    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return SafeArea(child: Scaffold(
     body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:_onItemTapped,
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_add),
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(Icons.call),
            backgroundColor: Colors.greenAccent,
          ),
        ],

      ),
    ));
  }
}


