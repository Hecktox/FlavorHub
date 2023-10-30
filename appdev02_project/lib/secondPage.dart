import 'package:flutter/material.dart';

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
                // Define the action when the user icon is pressed
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
          Container(
            child: InkWell(
              onTap: (){
                
              },
              child: Image.asset('asset/spnFood1.png',
              width: 100,
              height: 100,),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold buildBulgarianPage() {
    return Scaffold(
      body: Center(child: Text("Bulgarian")),
    );
  }

  Scaffold buildGreekPage() {
    return Scaffold(
      body: Center(child: Text("Greek")),
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
}
