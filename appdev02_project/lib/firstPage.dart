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
          Stack(
            children: [
              Positioned(
                  top: 140,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => secondPage("spain")),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/spain.png'),
                          // Replace with your image asset
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    ),
                  ),
              ),
              Positioned(
                top: 140,
                left: 200,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("greek")),
                    );
                  },
                  child: Container(
                    width: 150, // Set the width as needed
                    height: 100, // Set the height as needed
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/greek.png'),
                        // Replace with your image asset
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 30,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("bulgarian")),
                    );
                  },
                  child: Container(
                    width: 150, // Set the width as needed
                    height: 100, // Set the height as needed
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/bulgaria.png'),
                        // Replace with your image asset
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 200,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("india")),
                    );
                  },
                  child: Container(
                    width: 150, // Set the width as needed
                    height: 100, // Set the height as needed
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/india.png'),
                        // Replace with your image asset
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => secondPage("usa")),
                    );
                  },
                  child: Container(
                    width: 150, // Set the width as needed
                    height: 100, // Set the height as needed
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/usa.png'),
                        // Replace with your image asset
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 100,
                child: Text("Select A Country",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: 250,
                left: 75,
                child: Text("Spain",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: 250,
                left: 235,
                child: Text("Greece",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: 410,
                left: 60,
                child: Text("Bulgaria",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: 410,
                left: 250,
                child: Text("India",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Positioned(
                top: 570,
                left: 155,
                child: Text("USA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
