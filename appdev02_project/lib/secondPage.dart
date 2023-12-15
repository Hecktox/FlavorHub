import 'package:flutter/material.dart';
import 'login.dart';
import 'firstPage.dart';
import 'settings.dart';
import 'chatPage.dart';
import 'thirdPage.dart';

class secondPage extends StatefulWidget {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final bool isAdmin;
  final String type;

  const secondPage({
    Key? key,
    required this.id,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.isAdmin,
    required this.type,
  }) : super(key: key);

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
    int _currentIndex = 0;

    final List<Widget> _pages = [
      BreakfastPageSpain(),
      LunchPageSpain(),
      DinnerPageSpain()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "almendra",
                          ),
                        ),
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
                child: Text("Croissant De \n Almendra", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "pan",
                          ),
                        ),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "migas",
                          ),
                        ),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "bocadillo",
                          ),
                        ),
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
                child: Text("Bocadillo De \n Jamon", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "huevos",
                          ),
                        ),
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
                child: Text("Huevosrotos", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "gazpacho",
                          ),
                        ),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildSpainPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageSpain()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold buildBulgarianPage() {
    int _currentIndex = 0;

    final List<Widget> _pages = [
      BreakfastPageBulgaria(),
      LunchPageBulgaria(),
      DinnerPageBulgaria()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "banista",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/bul1.jpg'),
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
                child: Text("Banista with cheese", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "mek",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/mek.jpg'),
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
                child: Text("Mekica", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "gyu",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/bul2.jpg'),
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
                child: Text("Bulgarian Gyuvech", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "shk",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/bul3.jpg'),
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
                child: Text("Shkembe", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "tara",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/tara.jpg'),
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
                child: Text("Tarator", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "gsalad",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/gsalad.jpg'),
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
                child: Text("Shopska Salad", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              )
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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
  Scaffold buildIndiaPage() {
    int _currentIndex = 0;

    final List<Widget> _pages = [
      BreakfastPageIndia(),
      LunchPageIndia(),
      DinnerPageIndia()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "upma",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in1.jpg'),
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
                child: Text("Rava Upma", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "breadu",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in2.jpg'),
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
                child: Text("Bread Upma", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "para",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in3.jpg'),
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
                child: Text("Paratha", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "sam",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in4.jpg'),
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
                child: Text("Samosas", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "pani",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in5.jpg'),
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
                child: Text("Pani Puri", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "kac",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/in6.jpg'),
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
                child: Text("Kachori", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              )
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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
  Scaffold buildGreekPage() {
    int _currentIndex = 0;

    final List<Widget> _pages = [
      BreakfastPageGreek(),
      LunchPageGreek(),
      DinnerPageGreek()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "yogurt",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/greekyogurt.jpg'),
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
                child: Text("Greek Yogurt", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "omellete",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/greekomelette.jpg'),
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
                child: Text("Greek Omelette", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "calamari",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/calamari.jpg'),
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
                child: Text("Calamari", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "salad",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/greeksalad.jpg'),
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
                child: Text("Greek Salad", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "porcsticks",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/greekporcsticks.jpg'),
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
                child: Text("Greek\nPorcsticks", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                          builder: (context) => ThirdPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                            type: "gyro",
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 150, // Set the width as needed
                      height: 100, // Set the height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/greekgyro.jpg'),
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
                child: Text("Greek Gyro", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              )
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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


  Scaffold BreakfastPageGreek() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "yogurt",),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "omellete",),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold LunchPageGreek() {
    int _currentIndex = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "calamari",),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "salad",),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold DinnerPageGreek() {
    int _currentIndex = 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "porcsticks",),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "gyro",),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold BreakfastPageSpain() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "almendra",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/croissantalmendra.jpg'),
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
                "Croissant De \n Almendra",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "pan",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/panTumaca.png'),
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
                "Pan Tumaca",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildSpainPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageSpain()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold LunchPageSpain() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
            top: 130,
            left: 30,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "bocadillo",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/bocadillos.jpg'),
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
                "Bocadillos",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "migas",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/migas.jpg'),
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
                "Migas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildSpainPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageSpain()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold DinnerPageSpain() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 150,
            child: Center(
              child: Text(
                "Dinner",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "huevos",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/huevosrotos.jpg'),
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
                "Huevosrotos",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "gazpacho",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/gazpacho.jpg'),
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
                "Gazpacho",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildSpainPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageSpain()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageSpain()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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
  Scaffold BreakfastPageBulgaria() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "banista",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/bul1 .jpg'),
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
                "Banista with cheese",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "mek",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/mek .jpg'),
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
                "Mekica",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold LunchPageBulgaria() {
    int _currentIndex = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "gyu",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/bul2 .jpg'),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "shk",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/bul3 .jpg'),
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
                "Bulgarian Gyuvech",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Shkembe",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold DinnerPageBulgaria() {
    int _currentIndex = 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "tara",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/tara.jpg'),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "gsalad",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/gsalad.jpg'),
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
                "Tarator",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Shopska Salad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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


  Scaffold BreakfastPageIndia() {
    int _currentIndex = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "upma",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in1 .jpg'),
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
                "Rava Upma",
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "breadu",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in2 .jpg'),
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
                "Bread Upma",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold LunchPageIndia() {
    int _currentIndex = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "para",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in3 .jpg'),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "sam",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in4 .jpg'),
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
                "Paratha",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Samosas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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

  Scaffold DinnerPageIndia() {
    int _currentIndex = 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "pani",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in5.jpg'),
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
                      builder: (context) => ThirdPage(id: widget.id, firstName: widget.firstName,
                        lastName: widget.lastName,
                        email: widget.email,
                        username: widget.username,
                        password: widget.password,
                        isAdmin: widget.isAdmin,
                        type: "kac",),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/in6.jpg'),
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
                "Pani Puri",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 260,
            right: 30,
            child: Center(
              child: Text(
                "Kachori",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${widget.firstName} ${widget.lastName}"),
              accountEmail: Text(widget.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  widget.firstName[0] + widget.lastName[0],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('IA Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      id: widget.id,
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Change the background color
        selectedItemColor: Colors.deepPurple, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        elevation: 10, // Add elevation
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => buildGreekPage()),
              );
            }
            else if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreakfastPageGreek()),
              );
            } else if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LunchPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DinnerPageGreek()),
              );
            } else if (_currentIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage(id: widget.id, firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                  password: widget.password,
                  isAdmin: widget.isAdmin,
                  type: " ",)),
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
  }
