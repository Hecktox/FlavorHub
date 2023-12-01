import 'package:flutter/material.dart';
import 'login.dart';

class secondPage extends StatefulWidget {
  final String type;

  secondPage(this.type, {Key? key}) : super(key: key);

  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    if (widget.type == "spain") {
      return buildSpainPage();
    } else if (widget.type == "bulgarian") {
      return buildBulgarianPage();
    } else if (widget.type == "greek") {
      return buildGreekPage();
    } else if (widget.type == "france") {
      return buildFrancePage();
    } else if (widget.type == "usa") {
      return buildUSAPage();
    } else {
      return buildIndiaPage();
    }
  }

  Scaffold buildSpainPage() {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage()),
                );
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
                top: 80,
                  left: 150,
                  child: Center(
                    child: Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 130,
                  left: 30,
                  child: Center(
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
                            image: AssetImage('asset/croissantalmendra.jpg'),
                            // Replace with your image asset
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                      ),
                    )
                  )
              ),
              Positioned(
                  top: 240,
                  left: 30,
                  child: Center(
                    child: Text("Courasant De \n Almendra", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 130,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/panTumaca.png'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 240,
                  left: 220,
                  child: Center(
                    child: Text("Pan Tumaca", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 300,
                  left: 170,
                  child: Center(
                    child: Text("Lunch", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
              Positioned(
                  top: 340,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/migas.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 450,
                  left: 250,
                  child: Center(
                    child: Text("Migas", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 340,
                  left: 30,
                  child: Center(
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
                              image: AssetImage('asset/bocadillos.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 450,
                  left: 30,
                  child: Center(
                    child: Text("Bocadillo De\nJamon", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
              Positioned(
                  top: 500,
                  left: 170,
                  child: Center(
                    child: Text("Dinner", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 550,
                  left: 30,
                  child: Center(
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
                              image: AssetImage('asset/huevosrotos.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 660,
                  left: 75,
                  child: Center(
                    child: Text("Migas", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 550,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/gazpacho.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 660,
                  left: 250,
                  child: Center(
                    child: Text("Gazpacho", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }

  Scaffold buildBulgarianPage() {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage()),
                );
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
                  top: 80,
                  left: 150,
                  child: Center(
                    child: Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 130,
                  left: 30,
                  child: Center(
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
                              image: AssetImage('asset/croissantalmendra.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 240,
                  left: 30,
                  child: Center(
                    child: Text("Courasant De \n Almendra", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 130,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/panTumaca.png'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 240,
                  left: 220,
                  child: Center(
                    child: Text("Pan Tumaca", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 300,
                  left: 170,
                  child: Center(
                    child: Text("Lunch", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
              Positioned(
                  top: 340,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/migas.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 450,
                  left: 250,
                  child: Center(
                    child: Text("Migas", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 340,
                  left: 30,
                  child: Center(
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
                              image: AssetImage('asset/bocadillos.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 450,
                  left: 30,
                  child: Center(
                    child: Text("Bocadillo De\nJamon", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
              Positioned(
                  top: 500,
                  left: 170,
                  child: Center(
                    child: Text("Dinner", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 550,
                  left: 30,
                  child: Center(
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
                              image: AssetImage('asset/huevosrotos.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 660,
                  left: 75,
                  child: Center(
                    child: Text("Migas", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),

              Positioned(
                  top: 550,
                  left: 210,
                  child: Center(
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
                              image: AssetImage('asset/gazpacho.jpg'),
                              // Replace with your image asset
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 660,
                  left: 250,
                  child: Center(
                    child: Text("Gazpacho", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }

  Scaffold buildGreekPage() {
    int _currentIndex = 0;

    final List<Widget> _pages = [
      BreakfastPage(),
      LunchPage(),
      DinnerPage()
    ];

    return Scaffold(
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPage()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPage()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPage()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage("Home")),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            label: 'Breakfast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Lunch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nights_stay),
            label: 'Dinner',
          ),
        ],
      ),
    );
  }

  Scaffold buildFrancePage() {
    return Scaffold(
      body: Center(child: Text("France")),
    );
  }

  Scaffold buildUSAPage() {
    return Scaffold(
      body: Center(child: Text("USA")),
    );
  }

  Scaffold buildIndiaPage() {
    return Scaffold(
      body: Center(child: Text("India")),
    );
  }

  Scaffold BreakfastPage() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 150,
            child: Center(
              child: Text(
                "Breakfast",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/greekyogurt.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 30,
            child: Center(
              child: Text(
                "Greek Yogurt",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 210,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/greekomelette.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 220,
            child: Center(
              child: Text(
                "Greek Omelette",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold LunchPage() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 150,
            child: Center(
              child: Text(
                "Lunch",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/calamari.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/greeksalad.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 30,
            child: Center(
              child: Text(
                "Calamari",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Greek Salad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold DinnerPage() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Center(
              child: Text(
                "Dinner",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/greekporcsticks.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            right: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => secondPage("greek"),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/greekgyro.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 30,
            child: Center(
              child: Text(
                "Greek Porcsticks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Greek Gyro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
