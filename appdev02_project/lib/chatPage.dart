import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:appdev02_project/firstPage.dart';
import 'package:appdev02_project/messages.dart';
import 'package:appdev02_project/admin.dart';

class ChatPage extends StatefulWidget {
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final bool isAdmin;

  const ChatPage({
    Key? key,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.isAdmin,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
late DialogFlowtter dialogFlowtter;
final TextEditingController _controller = TextEditingController();

List<Map<String, dynamic>> messages = [];

@override
void initState() {
  DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  super.initState();
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
      body: Column(
          children: [
            Expanded(child: MessagesScreen(messages: messages)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.black),
                      )),
                  IconButton(
                      onPressed: () {
                        sendMessage(_controller.text);
                        _controller.clear();
                      },
                      icon: Icon(Icons.send))
                ],
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
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('AI Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      firstName: widget.firstName,
                      lastName: widget.lastName,
                      email: widget.email,
                      username: widget.username,
                      isAdmin: widget.isAdmin,
                    ),
                  ),
                );
              },
            ),
            if (widget.isAdmin)
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('Admin Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminPage(
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

sendMessage(String text) async {
  if (text.isEmpty) {
    print('Message is empty');
  } else {
    setState(() {
      addMessage(Message(text: DialogText(text: [text])), true);
    });

    DetectIntentResponse response = await dialogFlowtter.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)));
    if (response.message == null) return;
    setState(() {
      addMessage(response.message!);
    });
  }
}

addMessage(Message message, [bool isUserMessage = false]) {
  messages.add({'message': message, 'isUserMessage': isUserMessage});
}
}

