import 'package:flutter/material.dart';
import 'package:untitled/secondPage.dart';

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
      backgroundColor: Colors.white70,
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
              padding: EdgeInsets.fromLTRB(330, 15, 0, 0),
            ),
          ),
          Container(
            // Menu Icon Container
            child: IconButton(
              icon: Icon(Icons.menu, size: 40),
              onPressed: () {
                // Toggle the menu open or closed
                setState(() {
                  isMenuOpen = !isMenuOpen;
                });
              },
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            ),
          ),
          if (isMenuOpen)
            // Menu Container with options
            Container(
              child: Column(
                children: <Widget>[
                  // Put your menu options here
                  // Example:
                  Text("Option 1"),
                  Text("Option 2"),
                  Text("Option 3"),
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
            ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Vertically align the buttons to the center
              children: [
                Text(
                  "What country do you wnat to select?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("spain")),
                    );
                  },
                  child: Text('Spanish Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    // Text color
                    backgroundColor: Colors.blue,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button shape
                    ),
                  ), // Text displayed on the button.
                ),
                SizedBox(height: 30), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("bulgarian")),
                    );
                  },
                  child: Text('Bulgarian Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 30), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("greek")),
                    );
                  },
                  child: Text('Greek Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    // Text color
                    backgroundColor: Colors.blue,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button shape
                    ),
                  ), // Text displayed on the button.
                ),
                SizedBox(height: 30), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("france")),
                    );
                  },
                  child: Text('France Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    // Text color
                    backgroundColor: Colors.blue,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button shape
                    ),
                  ), // Text displayed on the button.
                ),
                SizedBox(height: 30), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("usa")),
                    );
                  },
                  child: Text('USA Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    // Text color
                    backgroundColor: Colors.blue,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button shape
                    ),
                  ), // Text displayed on the button.
                ),
                SizedBox(height: 30), // Add space between the buttons
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("india")),
                    );
                  },
                  child: Text('Indian Food',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    // Text color
                    backgroundColor: Colors.blue,
                    // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Button shape
                    ),
                  ), // Text displayed on the button.
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  top: 440,
                  left: 50,
                  child: Image.asset(
                    'asset/francia.png',
                    scale: 5,
                  )),
              Positioned(
                  top: 285,
                  left: 50,
                  child: Image.asset(
                    'asset/bulgaria.png',
                    scale: 5,
                  )),
              Positioned(
                  top: 360,
                  left: 50,
                  child: Image.asset(
                    'asset/grecia.png',
                    scale: 5,
                  )),
              Positioned(
                  top: 517,
                  left: 50,
                  child: Image.asset(
                    'asset/usa.png',
                    scale: 5,
                  )),
              Positioned(
                  top: 595,
                  left: 50,
                  child: Image.asset(
                    'asset/india.png',
                    scale: 5,
                  )),
              Positioned(
                  top: 203,
                  left: 50,
                  child: Image.asset('asset/spain.png', scale: 2)),
            ],
          ),
        ],
      ),
    );
  }
}

