import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'login.dart';
import 'ChatPage.dart';
import 'Settings.dart';

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
          MaterialPageRoute(builder: (context) => secondPage(firstName: widget.firstName,
            lastName: widget.lastName,
            email: widget.email,
            username: widget.username,
            type: country.route,)),
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
                  firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                ),
              ),
            );
          }),
          buildDrawerItem(Icon(Icons.home), 'Home', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(
                  firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
                ),
              ),
            );
          }),
          buildDrawerItem(Icon(Icons.chat), 'IA Help', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  firstName: widget.firstName,
                  lastName: widget.lastName,
                  email: widget.email,
                  username: widget.username,
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
