import 'package:flutter/material.dart';
import 'ChatPage.dart';
import 'firstPage.dart';

class SettingsPage extends StatefulWidget {
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  const SettingsPage({
    Key? key,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationEnabled = true; // Example setting

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flavor Hub",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Username'),
            subtitle: Text(widget.username),
          ),
          ListTile(
            title: Text('Email'),
            subtitle: Text(widget.email),
          ),
          ListTile(
            title: Text('First Name'),
            subtitle: Text(widget.firstName),
          ),
          ListTile(
            title: Text('Last Name'),
            subtitle: Text(widget.lastName),
          ),
          // Add more settings widgets as needed
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
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
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
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                    ),
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
