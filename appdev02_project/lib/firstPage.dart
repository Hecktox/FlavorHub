import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // Flavor Hub Text Container
            child: Text(
              "Flavor Hub",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.fromLTRB(150, 30, 120, 0),
          ),
          Container(
            // User Icon Container
            child: IconButton(
              icon: Icon(Icons.supervised_user_circle_outlined, size: 40),
              onPressed: () {
                // Define the action when the user icon is pressed
              },
            ),
            padding: EdgeInsets.fromLTRB(330, 15, 0, 0),
          ),
          Container(
            // dropdown Container
            child: IconButton(
              icon: Icon(Icons.menu, size: 40),
              onPressed: () {
                // Toggle the menu open or closed
                setState(() {
                  isMenuOpen = !isMenuOpen;
                });
              },
            ),
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          ),
          if (isMenuOpen)
          // Menu Container with options
            Container(
              child: Column(
                children: <Widget>[
                  //put inside options
                  //ex:
                  Text("hello")
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
            ),
        ],
      ),
    );
  }
}