import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appdev02_project/db.dart';
import 'package:appdev02_project/registerAdmin.dart';
import 'package:appdev02_project/firstPage.dart';

class AdminPage extends StatefulWidget {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final bool isAdmin;

  const AdminPage({
    Key? key,
    required this.id,
    required this.email,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.isAdmin,
  }) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPage();
}

class _AdminPage extends State<AdminPage> {
  List<Map<String, dynamic>> userList = [];
  Mydb mydb = Mydb();
  bool showWarning = false;

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isUpdating = false;
  int updatingUserId = 0;

  bool isSearching = false;

  TextEditingController masterKeyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    mydb.open();
    getData();
  }

  void getData() async {
    await Future.delayed(Duration(milliseconds: 500));
    userList = await mydb.getAllUsers();
    setState(() {});
  }

  void searchUsers() async {
    // Set the searching flag to true
    isSearching = true;

    userList = await mydb.getAllUsers();

    // Filter users based on search criteria
    userList = userList.where((user) {
      String userFirstName = user["first_name"].toLowerCase();
      String userLastName = user["last_name"].toLowerCase();
      String userEmail = user["email"].toLowerCase();
      String userUsername = user["username"].toLowerCase();
      String userPassword = user["password"].toLowerCase();

      String searchFirstName = firstName.text.toLowerCase();
      String searchLastName = lastName.text.toLowerCase();
      String searchEmail = email.text.toLowerCase();
      String searchUsername = username.text.toLowerCase();
      String searchPassword = password.text.toLowerCase();

      return userFirstName.contains(searchFirstName) &&
          userLastName.contains(searchLastName) &&
          userEmail.contains(searchEmail) &&
          userUsername.contains(searchUsername) &&
          userPassword.contains(searchPassword);
    }).toList();

    setState(() {});
  }

  void clearSearch() {
    // Clear the search criteria and show all users
    isSearching = false;
    firstName.clear();
    lastName.clear();
    email.clear();
    username.clear();
    password.clear();
    getData();
  }

  // Function to show the master key confirmation dialog for deleting or updating an admin
  Future<void> showMasterKeyDialog(
      BuildContext context, Function onConfirm) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Master Key to Confirm'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: masterKeyController,
                decoration: InputDecoration(
                  labelText: 'Master Key',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // Hide entered text
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String masterKey = masterKeyController.text;
                if (masterKey == '123') {
                  onConfirm(); // Call the provided function if master key matches
                  masterKeyController.clear();
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Incorrect Master Key'),
                    ),
                  );
                }
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  void updateUser() async {
    int userId = updatingUserId;
    String updatedFirstName = firstName.text;
    String updatedLastName = lastName.text;
    String updatedEmail = email.text;
    String updatedUsername = username.text;
    String updatedPassword = password.text;

    if (userList
        .any((user) => user["user_id"] == userId && user["isAdmin"] == 1)) {
      // If the user being updated is an admin, show the master key confirmation dialog
      showMasterKeyDialog(context, () async {
        await mydb.updateUser(
          userId,
          updatedFirstName,
          updatedLastName,
          updatedEmail,
          updatedUsername,
          updatedPassword,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Admin user information updated'),
          ),
        );

        clearFields();
        getData();
      });
    } else {
      // If the user being updated is not an admin, update without master key
      await mydb.updateUser(
        userId,
        updatedFirstName,
        updatedLastName,
        updatedEmail,
        updatedUsername,
        updatedPassword,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User information updated'),
        ),
      );

      clearFields();
      getData();
    }
  }

  void clearFields() {
    setState(() {
      isUpdating = false;
      updatingUserId = 0;
      firstName.clear();
      lastName.clear();
      email.clear();
      username.clear();
      password.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back), // Back button icon
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MainPage(
                            id: widget.id,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            username: widget.username,
                            password: widget.password,
                            isAdmin: widget.isAdmin,
                          ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(-1.0,
                            0.0); // Start position of the LoginPage (from the left)
                        const end =
                            Offset.zero; // End position of the LoginPage
                        const curve = Curves.easeInOut; // Transition curve
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                }, // Call _navigateBack function on button press
              ),
              Text('Back'), // Optional text label for the back button
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Admin Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: firstName,
            decoration: InputDecoration(
              hintText: 'First Name',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: lastName,
            decoration: InputDecoration(
              hintText: 'Last Name',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'Email',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: username,
            decoration: InputDecoration(
              hintText: 'Username',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: password,
            decoration: InputDecoration(
              hintText: 'Password',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (isSearching) {
                // Clear the search criteria and show all users
                clearSearch();
              } else if (isUpdating) {
                // Update user if in update mode
                updateUser();
              } else {
                // Check if any of the search fields are empty
                if (firstName.text.isEmpty &&
                    lastName.text.isEmpty &&
                    email.text.isEmpty &&
                    username.text.isEmpty &&
                    password.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter search criteria'),
                    ),
                  );
                  return;
                }

                // Call a method to perform the search
                searchUsers();
              }
            },
            style: ElevatedButton.styleFrom(
              primary: isSearching
                  ? Colors.red
                  : isUpdating
                      ? Colors.blue
                      : Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(250, 50),
            ),
            child: Text(
              isSearching
                  ? "Clear Search"
                  : isUpdating
                      ? "Update User"
                      : "Search User",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: userList.isEmpty
                ? Center(child: Text("No users to display"))
                : ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      var user = userList[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                user["isAdmin"] == 1
                                    ? Icons.admin_panel_settings
                                    : Icons.person_outline,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          title: Text(
                            "${user["first_name"]} ${user["last_name"]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email: ${user["email"]}"),
                              Text("Username: ${user["username"]}"),
                            ],
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 25,
                                  maxWidth: 25,
                                ),
                                child: IconButton(
                                  onPressed: () async {
                                    if (user["isAdmin"] == 1) {
                                      // Show the master key confirmation dialog
                                      showMasterKeyDialog(context, () async {
                                        await mydb.deleteUser(user["user_id"]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text('User data deleted'),
                                          ),
                                        );
                                        getData();
                                      });
                                    } else {
                                      // If user is not an admin, delete without master key
                                      await mydb.deleteUser(user["user_id"]);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text('User data deleted'),
                                        ),
                                      );
                                      getData();
                                    }
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 25,
                                  maxWidth: 25,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isUpdating = true;
                                      updatingUserId = user["user_id"];
                                      firstName.text = user["first_name"];
                                      lastName.text = user["last_name"];
                                      email.text = user["email"];
                                      username.text = user["username"];
                                      password.text = user["password"];
                                    });
                                  },
                                  icon: Icon(
                                    Icons.edit_document,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      RegisterPage(
                    id: widget.id,
                    firstName: widget.firstName,
                    lastName: widget.lastName,
                    email: widget.email,
                    username: widget.username,
                    password: widget.password,
                    isAdmin: widget.isAdmin,
                  ),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            }, // Call the registerAdmin function
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              minimumSize: Size(250, 50),
            ),
            child: Text(
              "Register Admin",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (showWarning)
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Please make sure all fields are filled.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
