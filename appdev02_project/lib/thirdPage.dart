import 'package:flutter/material.dart';
import 'chatPage.dart';
import 'settings.dart';
import 'firstPage.dart';

class ThirdPage extends StatefulWidget {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final bool isAdmin;
  final String type;

  const ThirdPage({
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
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.type == "almendra") {
      return buildAlmendraPage();
    } else if (widget.type == "pan") {
      return buildPanPage();
    } else if (widget.type == "bocadillo") {
      return buildBocadilloPage();
    } else if (widget.type == "migas") {
      return buildMigasPage();
    } else if (widget.type == "huevos") {
      return buildHuevosPage();
    } else if (widget.type == "gazpacho") {
      return buildGazpachoPage();
    }

    // Add a default return statement
    return Scaffold(
      body: Center(child: Text("Default page")),
    );
  }

  Scaffold buildAlmendraPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Croissant Con Almendras",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/croissantalmendra.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "1 package (about 1/4 ounce) active dry yeast\n"
                  "1/4 cup warm water (110°F/43°C)\n"
                  "1 cup warm milk (110°F/43°C)\n"
                  "1/4 cup granulated sugar\n"
                  "3 1/4 cups all-purpose flour, divided\n"
                  "1 teaspoon salt\n"
                  "1 cup unsalted butter, cold\n"
                  "1 1/4 cups almond flour\n"
                  "1 cup powdered sugar\n"
                  "1 teaspoon almond extract\n"
                  "1/2 cup sliced almonds (for topping)\n"
                  "Apricot jam (for glazing)",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Activate Yeast:\n"
                  "In a small bowl, dissolve the yeast in warm water and let it sit for 5-10 minutes until it becomes frothy.\n\n"
                  "Prepare Dough:\n"
                  "In a large bowl, combine warm milk, sugar, and the activated yeast mixture.\n"
                  "Gradually add 3 cups of flour and salt, mixing until a dough forms.\n"
                  "Turn the dough onto a floured surface and knead for about 5 minutes, gradually adding more flour until the dough is smooth and elastic.\n\n"
              // Continue with the rest of the instructions...
              ,
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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


  Scaffold buildPanPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pan Tumaca",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/panTumaca.png'),
                // Replace with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Rustic bread or baguette, sliced\n"
                  "Ripe tomatoes (2-3, depending on size)\n"
                  "2 cloves of garlic, peeled\n"
                  "Extra virgin olive oil\n"
                  "Salt",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Toast the Bread:\n"
                  "Toast the slices of bread until they are golden brown. You can do this in a toaster, under the broiler, or on a grill.\n\n"
                  "Prepare the Tomatoes:\n"
                  "Cut the tomatoes in half. Rub the cut side of the tomato over the surface of each slice of toasted bread. The bread will absorb the tomato juices.\n\n"
                  "Garlic Rub:\n"
                  "Take a peeled garlic clove and rub it over the tomato-soaked bread. The goal is to infuse the bread with a subtle garlic flavor. You can use more or less garlic according to your preference.\n\n"
                  "Drizzle with Olive Oil:\n"
                  "Drizzle each slice with extra virgin olive oil. Be generous, as the olive oil adds richness and enhances the flavors.\n\n"
                  "Season with Salt:\n"
                  "Sprinkle a pinch of salt over each slice. This enhances the natural sweetness of the tomatoes and adds a savory element.\n\n"
                  "Optional Variations:\n"
                  "Some people like to add additional toppings like cured ham (such as serrano or prosciutto) or grated Manchego cheese. Feel free to customize it to your liking.\n\n"
                  "Serve:\n"
                  "Serve the Pan con Tomate immediately. It's best enjoyed fresh.",
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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

  Scaffold buildBocadilloPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bocadillo de Jamón",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/bocadillos.jpg'),
                // Replace with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Baguette or crusty rolls\n"
                  "Spanish ham\n"
                  "Extra virgin olive oil",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Prepare the Bread:\n"
                  "Slice the baguette or rolls in half lengthwise. If the bread is too dense, you can scoop out some of the interior to make more room for the filling.\n\n"
                  "Add Ham:\n"
                  "Lay slices of Spanish ham on the bottom half of the bread. The amount of ham can vary based on your preference.\n\n"
                  "Drizzle with Olive Oil:\n"
                  "Drizzle a bit of extra virgin olive oil over the ham. This not only adds flavor but also helps to moisten the sandwich.\n\n"
                  "Assemble:\n"
                  "Place the top half of the bread on the ham to close the sandwich.\n\n"
                  "Optional Additions:\n"
                  "While the traditional Bocadillo de Jamón is quite simple, you can customize it by adding ingredients like sliced tomatoes, lettuce, or a touch of garlic mayonnaise (alioli) if desired.\n\n"
                  "Serve:\n"
                  "Cut the sandwich into smaller portions if needed and serve immediately.",
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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


  Scaffold buildMigasPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Migas",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/migas.jpg'),
                // Replace with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "4 cups stale bread, preferably a rustic loaf, cut into small cubes\n"
                  "1/2 cup extra virgin olive oil\n"
                  "3 cloves garlic, finely chopped\n"
                  "200g (7 oz) Spanish chorizo, diced\n"
                  "1 red bell pepper, diced\n"
                  "Salt, to taste\n"
                  "Paprika, to taste (optional)",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Prepare the Bread:\n"
                  "If the bread isn't already stale, you can leave the cubes out overnight to dry. Stale bread works best for migas.\n\n"
                  "Sauté Chorizo and Garlic:\n"
                  "In a large skillet or pan, heat the olive oil over medium heat. Add the chopped garlic and diced chorizo. Sauté until the chorizo is cooked and the garlic is golden brown.\n\n"
                  "Add Bread Cubes:\n"
                  "Add the bread cubes to the skillet. Toss and stir to coat the bread with the oil, chorizo, and garlic mixture.\n\n"
                  "Cook Until Crispy:\n"
                  "Cook the bread cubes, stirring frequently, until they become crispy and golden. This may take around 15-20 minutes.\n\n"
                  "Add Bell Pepper:\n"
                  "Add the diced red bell pepper to the skillet. Continue to cook for an additional 5-7 minutes until the pepper is tender.\n\n"
                  "Season:\n"
                  "Season the migas with salt to taste. You can also add a sprinkle of paprika for extra flavor if desired.\n\n"
                  "Serve:\n"
                  "Transfer the migas to a serving dish and serve warm. Migas are often enjoyed as a side dish or a main course.",
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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

  Scaffold buildHuevosPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Huevos Rotos",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/huevosrotos.jpg'),
                // Replace with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Potatoes (2-3 large potatoes, preferably waxy potatoes)\n"
                  "Olive oil for frying\n"
                  "Eggs (2-3 per person)\n"
                  "Salt and pepper to taste\n"
                  "Optional: Serrano ham or chorizo, sliced",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Prepare Potatoes:\n"
                  "Peel and cut the potatoes into thin slices or small cubes. You can also use a mandoline slicer to get thin, even slices.\n\n"
                  "Fry Potatoes:\n"
                  "Heat a generous amount of olive oil in a pan over medium heat. Fry the potato slices until they are golden brown and crispy. Remove them from the pan and drain excess oil on paper towels. Sprinkle with salt.\n\n"
                  "Cook Eggs:\n"
                  "In the same pan, add more olive oil if needed. Crack the eggs into the pan, keeping the yolks intact. Fry the eggs to your desired doneness. For Huevos Rotos, it's common to have the yolks slightly runny.\n\n"
                  "Assemble:\n"
                  "Place the crispy potatoes on a serving plate. Carefully place the fried eggs on top of the potatoes, ensuring that the yolks remain intact.\n\n"
                  "Season:\n"
                  "Season the eggs with salt and pepper to taste.\n\n"
                  "Optional Toppings:\n"
                  "If you like, you can add slices of Serrano ham or chorizo on top of the eggs for extra flavor.\n\n"
                  "Serve:\n"
                  "Serve immediately while the eggs are still hot, allowing the yolks to mix with the crispy potatoes when broken.",
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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


  Scaffold buildGazpachoPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gazpacho",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/gazpacho.jpg'),
                // Replace with your actual image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "6 ripe tomatoes, chopped\n"
                  "1 cucumber, peeled and chopped\n"
                  "1 red bell pepper, chopped\n"
                  "1 green bell pepper, chopped\n"
                  "1 small red onion, chopped\n"
                  "2 cloves garlic, minced\n"
                  "4 cups tomato juice\n"
                  "1/4 cup red wine vinegar\n"
                  "1/4 cup extra virgin olive oil\n"
                  "Salt and black pepper, to taste\n"
                  "1 teaspoon sugar (optional, to balance acidity)\n"
                  "Croutons (for garnish, optional)\n"
                  "Fresh herbs (such as basil or parsley, for garnish, optional)",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Instructions:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Prepare Vegetables:\n"
                  "Wash and chop the tomatoes, cucumber, red and green bell peppers, red onion, and garlic.\n\n"
                  "Blend Ingredients:\n"
                  "In a blender or food processor, combine the chopped vegetables, garlic, tomato juice, red wine vinegar, and olive oil. Blend until smooth.\n\n"
                  "Season:\n"
                  "Season the gazpacho with salt and black pepper to taste. If the soup is too acidic, you can add a teaspoon of sugar to balance the flavors.\n\n"
                  "Chill:\n"
                  "Refrigerate the gazpacho for at least 2 hours to allow the flavors to meld and the soup to become chilled.\n\n"
                  "Serve:\n"
                  "Before serving, check and adjust the seasoning. You can add more salt, pepper, or a splash of vinegar if needed.\n\n"
                  "Garnish:\n"
                  "Ladle the gazpacho into bowls. Garnish with croutons and fresh herbs if desired.\n\n"
                  "Enjoy:\n"
                  "Serve the gazpacho cold and enjoy its refreshing taste.",
              style: TextStyle(fontSize: 16),
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
                    builder: (context) =>
                        MainPage(
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
                    builder: (context) =>
                        ChatPage(
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
}