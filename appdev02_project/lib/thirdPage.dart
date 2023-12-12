import 'package:flutter/material.dart';
import 'chatPage.dart';
import 'settings.dart';
import 'firstPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
    }else if (widget.type == "yogurt") {
      return buildYougurtoPage();
    }else if (widget.type == "omellete") {
      return buildOmelltePage();
    }else if (widget.type == "calamari") {
      return buildCalamariPage();
    }else if (widget.type == "salad") {
      return buildSaladPage();
    }else if (widget.type == "porcsticks") {
      return buildPorcsticksPage();
    }else if (widget.type == "gyro") {
      return buildGyroPage();
    }

    // Add a default return statement
    return Scaffold(
      body: Center(child: Text("Default page")),
    );
  }

  Scaffold buildAlmendraPage() {
    String videoUrl = "https://www.youtube.com/watch?v=0YVopYnTRRE";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Croissant Con Almendras",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
    String videoUrl = "https://www.youtube.com/watch?v=n7f0JoGSKug";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pan Tumaca",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
    String videoUrl = "https://www.youtube.com/watch?v=SSeV18XigiU";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
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
    String videoUrl = "https://www.youtube.com/watch?v=zBDkSuY_YUM";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Migas",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
    String videoUrl = "https://www.youtube.com/watch?v=4a9_v2MWEcI";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Huevos Rotos",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
    String videoUrl = "https://www.youtube.com/watch?v=p189MYNRDSw";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gazpacho",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
  Scaffold buildYougurtoPage() {
    String videoUrl = "https://www.youtube.com/watch?v=gLivGD5-Uvo";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yougurt",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "2 tablespoons of plain yogurt with live active cultures (as a starter)\n"
                  "4 cups of whole milk (you can also use 2% or skim milk)\n"
                  "1 red bell pepper, chopped",
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
              "Heat the Milk:\n"
                  "Pour the milk into a saucepan and place it over medium heat.\n"
                  "Heat the milk gradually, stirring constantly to prevent it from sticking to the bottom of the pan.\n"
                  "Use a thermometer to monitor the temperature. Heat the milk until it reaches about 180°F (82°C).\n"
                  "Cool the Milk:\n"
                  "Allow the milk to cool down to around 110°F (43°C). This is the ideal temperature for the yogurt cultures to thrive.\n"
                  "Add the Yogurt Starter:\n"
                  "In a separate bowl, mix the 2 tablespoons of plain yogurt with a small amount of the cooled milk to create a smooth mixture.\n"
                  "Add this mixture back into the saucepan with the rest of the cooled milk. Stir well to evenly distribute the yogurt cultures.\n"
                  "Incubate the Yogurt:\n"
                  "Pour the milk and yogurt mixture into a clean container with a lid.\n"
                  "Cover the container and place it in a warm environment to incubate. You can use a yogurt maker or simply wrap the container in towels to maintain warmth.\n"
                  "Allow the yogurt to incubate for about 4-8 hours or until it reaches the desired thickness. The longer it incubates, the thicker and tangier it will become.\n"
                  "Strain the Yogurt:\n"
                  "Once the yogurt is set, place a fine-mesh strainer over a bowl and line it with cheesecloth or a clean kitchen towel.\n"
                  "Pour the yogurt into the strainer to separate the whey from the thicker yogurt. You can let it strain for 2-4 hours or even overnight in the refrigerator for a thicker consistency.\n"
                  "Store the Greek Yogurt:\n"
                  "Transfer the strained Greek yogurt to a clean container and refrigerate. Save the whey for other uses, such as adding it to smoothies or using it in cooking\n"
                  "Enjoy:\n"
                  "Feel free to customize this basic recipe by adjusting the incubation time or experimenting with different milk types for a yogurt that suits your preferences.",
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
  Scaffold buildOmelltePage() {
    String videoUrl = "https://www.youtube.com/watch?v=IqW7DsQo43g";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grrek Omellete",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "3 large eggs\n"
                  "2 tablespoons feta cheese, crumbled\n"
                  "1/4 cup cherry tomatoes, halved\n"
                  "1/4 cup baby spinach, chopped\n"
                  "1/4 cup cherry tomatoes, halved\n"
                  "1/4 cup cherry tomatoes, halved\n"
                  "1 tablespoon olive oil\n"
                  "Salt and pepper to taste",
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
              "Prepare Ingredients:\n"
                  "Chop the cherry tomatoes, baby spinach, red onion, and fresh dill.\n\n"
                  "Whisk Eggs:\n"
                  "In a bowl, whisk the eggs until well beaten. Season with a pinch of salt and pepper.\n\n"
                  "Heat Olive Oil:\n"
                  "Heat the olive oil in a non-stick skillet over medium heat.\n\n"
                  "Saute Vegetables:\n"
                  "Add the chopped red onion to the skillet and sauté until softened.\n\n"
                  "Add Tomatoes and Spinach:\n"
                  "Add the cherry tomatoes and baby spinach to the skillet. Cook for another 2-3 minutes until the spinach wilts and the tomatoes soften.\n\n"
                  "Pour Eggs:\n"
                  "Pour the whisked eggs over the sautéed vegetables in the skillet.\n\n"
                  "Add Feta and Dill:\n"
                  "Sprinkle crumbled feta cheese and chopped fresh dill evenly over the eggs.\n\n"
                  "Cook the Omelette:\n"
                  "Allow the omelette to cook undisturbed for a minute or two until the edges start setting.\n\n"
                  "Fold and Serve:\n"
                  "Gently lift the edges of the omelette with a spatula and fold it in half. Cook for an additional minute or until the eggs are fully set.\n\n"
                  "Serve Warm:\n"
                  "Slide the Greek omelette onto a plate and serve immediately.\n\n"
                  "Optional Garnish:\n"
                  "Garnish with additional fresh dill or a sprinkle of feta cheese if desired.\n\n"
                  "Enjoy your Greek omelette! You can customize it by adding other ingredients such as olives, bell peppers, or even a drizzle of tzatziki sauce for extra Greek flavor.",
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
  Scaffold buildCalamariPage() {
    String videoUrl = "https://www.youtube.com/watch?v=Jv_zCLQsqzo";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calamari",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "1 pound (450g) cleaned squid tubes and tentacles\n"
                  "1/4 cup olive oil\n"
                  "3 cloves garlic, minced\n"
                  "Juice of 1 lemon\n"
                  "1 teaspoon dried oregano\n"
                  "Salt and pepper to taste\n"
                  "Wooden skewers, soaked in water (if using bamboo)",
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
              "Prepare the Calamari:\n"
                  "If you have whole squid, clean them and cut into rings. You can also use pre-cleaned and sliced calamari tubes.\n\n"
                  "Marinate the Calamari:\n"
                  "In a bowl, combine olive oil, minced garlic, lemon juice, dried oregano, salt, and pepper. Mix well to create the marinade.\n"
                  "Add the cleaned calamari to the marinade, making sure they are well-coated. Let them marinate for at least 30 minutes to allow the flavors to infuse.\n\n"
                  "Skewer the Calamari:\n"
                  "Thread the marinated calamari onto wooden skewers. If you're using tentacles, make sure to include them on the skewers as well.\n\n"
                  "Grill or Pan-Sear:\n"
                  "Heat a grill pan or an outdoor grill to medium-high heat. Alternatively, you can use a regular frying pan on the stove.\n"
                  "Place the skewers on the hot grill or pan and cook for about 2-3 minutes per side or until the calamari is opaque and has grill marks.\n\n"
                  "Baste with Marinade:\n"
                  "While cooking, baste the calamari with the remaining marinade for added flavor.\n\n"
                  "Serve Hot:\n"
                  "Once the calamari is cooked through and has a nice char, remove them from the grill or pan.\n\n"
                  "Garnish and Serve:\n"
                  "Garnish with additional lemon wedges and fresh herbs if desired.\n\n"
                  "Optional Tzatziki Sauce:\n"
                  "Serve the Greek calamari with a side of tzatziki sauce for dipping. Tzatziki is a traditional Greek sauce made with yogurt, cucumber, garlic, and dill.\n\n"
                  "Enjoy your homemade Greek calamari! This dish pairs well with a Greek salad, rice, or pita bread.",
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
  Scaffold buildPorcsticksPage() {
    String videoUrl = "https://www.youtube.com/watch?v=J17_1mMCqac";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Porc Sticks",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "4 pork steaks (about 1 inch thick)\n"
                  "1/4 cup olive oil\n"
                  "2 tablespoons red wine vinegar\n"
                  "3 cloves garlic, minced\n"
                  "1 teaspoon dried oregano\n"
                  "1 teaspoon dried thyme\n"
                  "1 teaspoon smoked paprika\n"
                  "Salt and pepper to taste\n"
                  "Lemon wedges for serving",
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
              "Marinate the Pork Steaks:\n"
                  "In a bowl, whisk together the olive oil, red wine vinegar, minced garlic, dried oregano, dried thyme, smoked paprika, salt, and pepper to create the marinade.\n\n"
                  "Coat the Steaks:\n"
                  "Place the pork steaks in a shallow dish or a resealable plastic bag. Pour the marinade over the steaks, making sure they are well-coated. Massage the marinade into the meat.\n\n"
                  "Allow the pork to marinate in the refrigerator for at least 30 minutes to an hour. For more intense flavor, you can marinate it longer, even overnight.\n\n"
                  "Preheat the Grill or Pan:\n"
                  "Preheat your grill or grill pan to medium-high heat.\n\n"
                  "Grill the Pork Steaks:\n"
                  "Remove the pork steaks from the marinade, letting any excess drip off.\n"
                  "Grill the pork steaks for about 4-5 minutes per side or until they reach your desired level of doneness. The internal temperature should reach at least 145°F (63°C).\n"
                  "Baste the steaks with the remaining marinade while grilling for added flavor.\n\n"
                  "Rest the Steaks:\n"
                  "Once cooked, remove the pork steaks from the grill and let them rest for a few minutes before serving.\n\n"
                  "Serve Hot:\n"
                  "Serve the Greek pork steaks hot, garnished with lemon wedges.\n\n"
                  "Optional: Tzatziki Sauce:\n"
                  "Consider serving the pork steaks with a side of tzatziki sauce, a traditional Greek yogurt-based condiment.\n\n"
                  "These Greek-style pork steaks pair well with a variety of side dishes, such as Greek salad, roasted vegetables, or rice. Enjoy your delicious and flavorful Greek pork steaks!",
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
  Scaffold buildSaladPage() {
    String videoUrl = "https://www.youtube.com/watch?v=IqW7DsQo43g";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grrek Salad",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "4 large tomatoes, chopped\n"
                  "1 cucumber, sliced\n"
                  "1 red onion, thinly sliced\n"
                  "1 cup Kalamata olives, pitted\n"
                  "1 cup feta cheese, crumbled\n"
                  "1 green bell pepper, sliced (optional)\n"
                  "1/4 cup extra-virgin olive oil\n"
                  "2 tablespoons red wine vinegar\n"
                  "1 teaspoon dried oregano\n"
                  "Salt and pepper to taste\n"
                  "Freshly chopped parsley for garnish (optional)",
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
                  "Chop the tomatoes, cucumber, red onion, and bell pepper (if using).\n\n"
                  "Assemble Salad:\n"
                  "In a large salad bowl, combine the chopped tomatoes, sliced cucumber, red onion, Kalamata olives, and bell pepper.\n\n"
                  "Add Feta:\n"
                  "Sprinkle the crumbled feta cheese over the vegetables.\n\n"
                  "Make the Dressing:\n"
                  "In a small bowl, whisk together the olive oil, red wine vinegar, dried oregano, salt, and pepper. Adjust the seasoning to taste.\n\n"
                  "Dress the Salad:\n"
                  "Drizzle the dressing over the salad. Toss gently to coat all the ingredients evenly.\n\n"
                  "Chill (Optional):\n"
                  "If time allows, refrigerate the Greek salad for about 30 minutes to allow the flavors to meld.\n\n"
                  "Garnish and Serve:\n"
                  "Just before serving, garnish with freshly chopped parsley if desired.\n\n"
                  "Serve Cold:\n"
                  "Serve the Greek salad cold as a side dish or a light and healthy main course.\n\n"
                  "Variations:\n"
                  "You can add sliced cherry tomatoes or heirloom tomatoes for extra color and flavor.\n"
                  "If you like, you can include thinly sliced radishes or pepperoncini for a bit of heat.\n"
                  "Consider drizzling a little extra olive oil or a squeeze of lemon juice before serving for added freshness.",
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
  Scaffold buildGyroPage() {
    String videoUrl = "https://www.youtube.com/watch?v=6TIRITAkj60";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Greek Gyro",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId, // Use the extracted videoId
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
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
              "2 pounds (about 1 kg) boneless lamb or chicken, thinly sliced\n"
                  "1/4 cup olive oil\n"
                  "3 cloves garlic, minced\n"
                  "1 teaspoon dried oregano\n"
                  "1 teaspoon ground cumin\n"
                  "1 teaspoon paprika\n"
                  "Salt and pepper to taste\n"
                  "Juice of 1 lemon",
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
              "Prepare Marinade:\n"
                  "In a bowl, mix together olive oil, minced garlic, oregano, cumin, paprika, salt, pepper, and lemon juice.\n\n"
                  "Marinate the Meat:\n"
                  "Place the sliced lamb or chicken in a resealable plastic bag or shallow dish. Pour the marinade over the meat, making sure it's well-coated. Marinate for at least 2 hours, or overnight for more flavor.\n\n"
                  "Cook the Gyro Meat:\n"
                  "Preheat a grill or grill pan over medium-high heat.\n"
                  "Thread the marinated meat onto skewers or cook directly on the grill.\n"
                  "Grill for about 5-7 minutes per side or until fully cooked.\n\n"
                  "Rest and Slice:\n"
                  "Allow the meat to rest for a few minutes, then thinly slice it against the grain.\n\n"
                  "Warm Pita Bread:\n"
                  "Warm the pita bread either on the grill or in the oven.\n\n"
                  "Layer Ingredients:\n"
                  "Spread a generous amount of tzatziki sauce on the pita.\n"
                  "Add slices of the grilled meat, and layer with sliced tomatoes, red onions, cucumbers, and lettuce.\n\n"
                  "Roll and Serve:\n"
                  "Roll the pita around the filling to form a gyro wrap.\n"
                  "Serve immediately, and optionally, secure with parchment paper or foil for easier handling.\n\n"
                  "Enjoy your homemade Greek gyro! Feel free to customize the toppings to suit your taste preferences.",
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



