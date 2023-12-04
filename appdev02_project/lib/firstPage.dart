import 'package:flutter/material.dart';
import 'package:appdev02_project/secondPage.dart';
import 'package:appdev02_project/chatPage.dart';
import 'package:appdev02_project/settings.dart';
import 'package:appdev02_project/db.dart';
import 'package:appdev02_project/admin.dart';

class MainPage extends StatefulWidget {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final bool isAdmin; // Add isAdmin parameter

  const MainPage({
    Key? key,
    required this.id,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.isAdmin, // Initialize isAdmin parameter
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Mydb database = Mydb();

  @override
  void initState() {
    super.initState();
    database.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Select A Country",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                ),
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  return buildCountryCard(countries[index]);
                },
              ),
            ),
          ],
        ),
      ),
      drawer: buildDrawer(),
    );
  }

  Widget buildCountryCard(Country country) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => secondPage(
              id: widget.id,
              firstName: widget.firstName,
              lastName: widget.lastName,
              email: widget.email,
              username: widget.username,
              password: widget.password,
              isAdmin: widget.isAdmin,
              type: country.route,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.white, // Set the card background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200], // Set the flag background color
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                country.imagePath,
                height: 80,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              country.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer() {
    return Drawer(
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
          buildDrawerItem(Icon(Icons.settings), 'Settings', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsPage(
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
          }),
          buildDrawerItem(Icon(Icons.home), 'Home', () {
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
          }),
          buildDrawerItem(Icon(Icons.chat), 'AI Help', () {
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
          }),
          if (widget.isAdmin)
            buildDrawerItem(Icon(Icons.admin_panel_settings), 'Admin Page', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminPage(
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }


  Widget buildDrawerItem(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {
        onTap();
      },
    );
  }
}

class Country {
  final String name;
  final String imagePath;
  final String route;

  Country({required this.name, required this.imagePath, required this.route});
}

List<Country> countries = [
  Country(name: 'Spain', imagePath: 'asset/spain.png', route: 'spain'),
  Country(name: 'Greece', imagePath: 'asset/greek.png', route: 'greek'),
  Country(name: 'Bulgaria', imagePath: 'asset/bulgaria.png', route: 'bulgarian'),
  Country(name: 'India', imagePath: 'asset/india.png', route: 'india'),
  Country(name: 'USA', imagePath: 'asset/usa.png', route: 'usa'),
];
