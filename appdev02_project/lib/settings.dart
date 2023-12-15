import 'package:flutter/material.dart';
import 'package:appdev02_project/chatPage.dart';
import 'package:appdev02_project/firstPage.dart';
import 'package:appdev02_project/admin.dart';
import 'package:appdev02_project/db.dart';
import 'package:appdev02_project/login.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SettingsPage extends StatefulWidget {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final bool isAdmin;

  const SettingsPage({
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
  State<SettingsPage> createState() => _SettingsPageState(
        username: username,
        email: email,
        firstName: firstName,
        lastName: lastName,
        password: password,
      );
}

class _SettingsPageState extends State<SettingsPage> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController passwordController;

  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Mydb mydb = Mydb();
  bool isEditing = false;
  bool isPasswordVisible = false;

  _SettingsPageState({
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String password,
  }) {
    usernameController = TextEditingController(text: username);
    emailController = TextEditingController(text: email);
    firstNameController = TextEditingController(text: firstName);
    lastNameController = TextEditingController(text: lastName);
    passwordController = TextEditingController(text: password);
  }

  @override
  void initState() {
    super.initState();
    mydb.open();

    mydb.getUser(widget.id).then((userData) {
      if (userData != null) {
        setState(() {
          usernameController.text = userData['username'];
          emailController.text = userData['email'];
          firstNameController.text = userData['first_name'];
          lastNameController.text = userData['last_name'];
          passwordController.text = userData['password'];
        });
      }
    });
  }

  void _startEditing() {
    setState(() {
      isEditing = true;
    });
  }

  void _saveChanges() async {
    // Get the updated values from the controllers
    String newUsername = usernameController.text;
    String newEmail = emailController.text;
    String newFirstName = firstNameController.text;
    String newLastName = lastNameController.text;
    String newPassword = passwordController.text;

    // Update the user's profile in the database
    int updatedRows = await mydb.updateUser(
      widget.id, // Pass the user_id of the current user
      newFirstName,
      newLastName,
      newEmail,
      newUsername,
      newPassword,
    );

    if (updatedRows > 0) {
      // The update was successful
      setState(() {
        isEditing = false;
      });

      // Show a confirmation message when changes are saved
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Saved Changes'),
        ),
      );
    } else {
      // Handle the case where the update fails (e.g., user not found)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to save changes'),
        ),
      );
    }
  }

  void _cancelEditing() {
    // Reset the text controllers to their original values
    usernameController.text = widget.username;
    emailController.text = widget.email;
    firstNameController.text = widget.firstName;
    lastNameController.text = widget.lastName;
    passwordController.text = widget.password;

    setState(() {
      isEditing = false;
    });
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Future<void> _takePhoto() async {
    try {
      final XFile? capturedFile = await _picker.pickImage(source: ImageSource.camera);

      if (capturedFile != null) {
        setState(() {
          _imageFile = File(capturedFile.path);
        });
      }
    } catch (e) {
      print('Error capturing photo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(16.0),
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
              child: Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Visibility(
              visible: !isEditing,
              child: Column(
                children: [
                  // CircleAvatar with larger size
                  CircleAvatar(
                    radius: 80, // Increase the radius
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: SizedBox(
                        width: 160, // Increase the width
                        height: 160, // Increase the height
                        child: _imageFile != null
                            ? Image.file(_imageFile!, fit: BoxFit.cover)
                            : Image.asset('asset/profile_image.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Add spacing between the circle and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
                    children: [
                      // Button to choose a photo
                      ElevatedButton.icon(
                        onPressed: _pickImage,
                        icon: Icon(Icons.camera_alt),
                        label: Text('Choose Photo'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Set the background color to grey
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                      SizedBox(width: 16), // Add spacing between buttons
                      // Button to take a photo
                      ElevatedButton.icon(
                        onPressed: _takePhoto,
                        icon: Icon(Icons.camera),
                        label: Text('Take Photo'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Set the background color to grey
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            _buildEditableField(
                "Username", usernameController, isEditing, Icons.person),
            _buildEditableField(
                "Email", emailController, isEditing, Icons.email),
            _buildEditableField(
                "First Name", firstNameController, isEditing, Icons.person),
            _buildEditableField(
                "Last Name", lastNameController, isEditing, Icons.person),
            _buildPasswordField("Password", passwordController, isEditing),
            SizedBox(height: 20),
            isEditing
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _saveChanges,
                        icon: Icon(Icons.save),
                        label: Text(
                          'Save Changes',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: _cancelEditing, // Bind the cancel function
                        icon: Icon(Icons.cancel), // Add a cancel icon
                        label: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors
                              .red, // Choose a color for the cancel button
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ],
                  )
                : ElevatedButton.icon(
                    onPressed: _startEditing,
                    icon: Icon(Icons.edit),
                    label: Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
            SizedBox(height: 20),
            Visibility(
              visible: !isEditing, // Condition to show or hide the button
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          LoginPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0,
                            1.0); // Start position of the LoginPage (from the bottom)
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
                },
                icon: Icon(Icons.logout), // Add a logout icon
                label: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  // Choose a color for the logout button
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
          ],
        ),
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
              title: Text('AI Help'),
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
            if (widget.isAdmin)
              ListTile(
                leading: Icon(Icons.admin_panel_settings),
                title: Text('Admin Page'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPage(
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
    );
  }

  Widget _buildEditableField(String label, TextEditingController controller,
      bool isEditing, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (isEditing)
              Icon(
                icon,
                color: Colors.grey,
              ),
          ],
        ),
        isEditing
            ? TextFormField(
                controller: controller,
              )
            : Text(controller.text),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildPasswordField(
      String label, TextEditingController controller, bool isEditing) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ],
        ),
        if (isEditing)
          TextFormField(
            controller: controller,
            obscureText: !isPasswordVisible,
          )
        else
          Text(
            isPasswordVisible ? controller.text : '******',
          ),
        SizedBox(height: 10),
      ],
    );
  }
}
