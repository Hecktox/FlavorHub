import 'dart:convert';
import 'package:flutter/material.dart';
import 'firstPage.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  const ChatPage({
    Key? key,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  List<Map<String, String>> _chatMessages = [];

  Future<void> _sendMessage(String message) async {
    // Replace with your actual Dialogflow credentials and endpoint
    const String dialogflowEndpoint =
        'https://dialogflow.googleapis.com/v2/projects/YOUR_PROJECT_ID/agent/sessions/YOUR_SESSION_ID:detectIntent';
    const String dialogflowApiKey = 'YOUR_DIALOGFLOW_API_KEY';

    final Uri uri = Uri.parse('$dialogflowEndpoint?key=$dialogflowApiKey');
    final Map<String, dynamic> requestData = {
      'queryInput': {'text': {'text': message, 'languageCode': 'en'}},
    };

    try {
      final http.Response response = await http.post(
        uri,
        body: jsonEncode(requestData),
        headers: {'Content-Type': 'application/json'},
      );

      print('Response: ${response.body}'); // Debug print

      if (response.statusCode == 200) {
        String botReply = 'Bot: ' + response.body;
        setState(() {
          _chatMessages.add({'type': 'You', 'message': message});
          _chatMessages.add({'type': 'Bot', 'message': botReply});
        });
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
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
          Expanded(
            child: ListView.builder(
              itemCount: _chatMessages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${_chatMessages[index]['type']}: ${_chatMessages[index]['message']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _messageController.text;
                    if (message.isNotEmpty) {
                      _sendMessage(message);
                      _messageController.clear();
                    }
                  },
                ),
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
