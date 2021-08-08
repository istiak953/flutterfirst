
import 'package:findallhere/Giving.dart';
import 'package:findallhere/Profile.dart';
import 'package:findallhere/SearchMapView.dart';
import 'package:findallhere/Wanting.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MyMainPage(),
    );
  }
}


class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {




  static List _widgetOptions = [MapSample(),
  Wanting(),Giving(),Profile()];



  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(

        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,

          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                //backgroundColor: Colors.white

            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.business),
                  Positioned(top: -1,right: -1,child: Icon(Icons.circle,size: 11.0,color: Colors.red,))
                ],
              ),
                label: 'Wanting',
                //backgroundColor: Colors.white

            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.terrain),
                  Positioned(top: 0,right: -1,child: Icon(Icons.circle,size: 11.0,color: Colors.red,))
                ],
              ),
              label: 'Giving',
              //backgroundColor: Colors.white

            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                //backgroundColor: Colors.white

            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),

      ),
    );
  }
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


}



