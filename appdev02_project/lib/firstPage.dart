import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'login.dart';
import 'ChatPage.dart';

class MainPage extends StatefulWidget {
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  const MainPage({
    Key? key,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Scaffold(
          body: Stack(
            children: [
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
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          //important : remove any paddig from the listview
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
              leading: Icon(Icons.settings), title: Text('Settings'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text('Home'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.chat), title: Text('IA Help'),
              onTap: () {
                // Navigate to another page using Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(firstName: widget.firstName,lastName: widget.lastName,email: widget.email,username: widget.username,), // Replace AnotherPage with the actual page you want to navigate to
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
