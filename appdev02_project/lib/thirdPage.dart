import 'package:flutter/material.dart';
import 'chatPage.dart';
import 'settings.dart';
import 'firstPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'map.dart';

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
    }else if (widget.type == "banista ") {
      return buildGyroPage();
    }else if (widget.type == "mek") {
      return buildbanistaPage();
    }else if (widget.type == "gyu") {
      return buildgyuPage();
    }else if (widget.type == "shk") {
      return buildshkPage();
    }else if (widget.type == "tara") {
      return buildtaraPage();
    }else if (widget.type == "gsalad") {
      return buildgsaladPage();
    }else if (widget.type == "upma") {
      return buildupmaPage();
    }else if (widget.type == "breadu") {
      return buildbreaduPage();
    }else if (widget.type == "para") {
      return buildparaPage();
    }else if (widget.type == "sam") {
      return buildsamPage();
    }else if (widget.type == "pani") {
      return buildpaniPage();
    }else if (widget.type == "kac") {
      return buildkacPage();
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildbanistaPage() {
    String videoUrl = "https://www.youtube.com/watch?v=9X7VGxL7YDg";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Banista with cheese",
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
    "Spanakopita Recipe:\n"
    "Ingredients:\n"
    "- 1 package (about 10 sheets) phyllo dough, thawed\n"
    "- 200g feta cheese, crumbled\n"
    "- 200g Bulgarian white cheese (or substitute with another feta-like cheese), crumbled\n"
    "- 3 large eggs\n"
    "- 1 cup plain yogurt\n"
    "- 1/2 cup unsalted butter, melted\n"
    "- Salt to taste\n"
    "- Optional: 1/4 cup vegetable oil for brushing the pan",
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
    "Continue with the Banitsa Recipe:\n"
    "Preheat the Oven:\n"
    "Preheat your oven to 375°F (190°C).\n\n"

    "Prepare the Filling:\n"
    "In a mixing bowl, combine the crumbled feta cheese, Bulgarian white cheese, and eggs. Mix well.\n"
    "Add the plain yogurt to the mixture and stir until well combined. Season with salt to taste.\n\n"

    "Assemble the Banitsa:\n"
    "1. Lay out one sheet of phyllo dough on a clean surface.\n"
    "2. Brush it lightly with melted butter.\n"
    "3. Add another sheet on top and repeat the process until you have about 5-6 layers.\n\n"

    "Add the Filling:\n"
    "Spread a portion of the cheese mixture evenly over the layered phyllo dough.\n\n"

    "Roll and Repeat:\n"
    "Roll the phyllo dough into a log or cylinder shape, starting from one end.\n"
    "Place the rolled Banitsa in a spiral shape in a greased baking dish.\n\n"

    "Repeat the Process:\n"
    "Repeat the layering and rolling process with the remaining phyllo dough and cheese mixture until the baking dish is filled.\n\n"

    "Bake:\n"
    "1. Brush the top of the Banitsa with more melted butter.\n"
    "2. Optionally, you can drizzle some vegetable oil over the top for a golden finish.\n"
    "3. Bake in the preheated oven for about 30-40 minutes or until the top is golden brown and crispy.\n\n"

    "Serve:\n"
    "Allow the Banitsa to cool for a few minutes before slicing and serving.\n"
    "Enjoy your homemade Banitsa with Cheese! It's a delightful dish that's often enjoyed as a breakfast or snack in Bulgarian cuisine.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildgyuPage() {
    String videoUrl = "https://www.youtube.com/watch?v=s0RTFyhJ2Hk";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Banista with cheese",
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
                  "- 1 package (about 10 sheets) phyllo dough, thawed\n"
                  "- 200g feta cheese, crumbled\n"
                  "- 200g Bulgarian white cheese (or substitute with another feta-like cheese), crumbled\n"
                  "- 3 large eggs\n"
                  "- 1 cup plain yogurt\n"
                  "- 1/2 cup unsalted butter, melted\n"
                  "- Salt to taste\n"
                  "- Optional: 1/4 cup vegetable oil for brushing the pan",
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
              "Continue with the Banitsa Recipe:\n"
                  "Preheat the Oven:\n"
                  "Preheat your oven to 375°F (190°C).\n\n"

                  "Prepare the Filling:\n"
                  "In a mixing bowl, combine the crumbled feta cheese, Bulgarian white cheese, and eggs. Mix well.\n"
                  "Add the plain yogurt to the mixture and stir until well combined. Season with salt to taste.\n\n"

                  "Assemble the Banitsa:\n"
                  "1. Lay out one sheet of phyllo dough on a clean surface.\n"
                  "2. Brush it lightly with melted butter.\n"
                  "3. Add another sheet on top and repeat the process until you have about 5-6 layers.\n\n"

                  "Add the Filling:\n"
                  "Spread a portion of the cheese mixture evenly over the layered phyllo dough.\n\n"

                  "Roll and Repeat:\n"
                  "Roll the phyllo dough into a log or cylinder shape, starting from one end.\n"
                  "Place the rolled Banitsa in a spiral shape in a greased baking dish.\n\n"

                  "Repeat the Process:\n"
                  "Repeat the layering and rolling process with the remaining phyllo dough and cheese mixture until the baking dish is filled.\n\n"

                  "Bake:\n"
                  "1. Brush the top of the Banitsa with more melted butter.\n"
                  "2. Optionally, you can drizzle some vegetable oil over the top for a golden finish.\n"
                  "3. Bake in the preheated oven for about 30-40 minutes or until the top is golden brown and crispy.\n\n"

                  "Serve:\n"
                  "Allow the Banitsa to cool for a few minutes before slicing and serving.\n"
                  "Enjoy your homemade Banitsa with Cheese! It's a delightful dish that's often enjoyed as a breakfast or snack in Bulgarian cuisine.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildshkPage() {
    String videoUrl = "https://www.youtube.com/watch?v=BY3lxizsxbk";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shkembe",
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
              "Vegetable Ratatouille Recipe:\n"
                  "Ingredients:\n"
                  "- 1 large onion, finely chopped\n"
                  "- 2-3 cloves of garlic, minced\n"
                  "- 2 large potatoes, peeled and diced\n"
                  "- 2 carrots, peeled and sliced\n"
                  "- 1 red bell pepper, chopped\n"
                  "- 1 green bell pepper, chopped\n"
                  "- 1 zucchini, sliced\n"
                  "- 1 eggplant, diced\n"
                  "- 3 ripe tomatoes, chopped (or 1 can of diced tomatoes)\n"
                  "- 1/2 cup green beans, chopped\n"
                  "- 1/2 cup peas (fresh or frozen)\n"
                  "- 1/4 cup vegetable oil\n"
                  "- 1 cup vegetable or chicken broth\n"
                  "- 1 teaspoon sweet paprika\n"
                  "- 1 teaspoon dried thyme\n"
                  "- Salt and pepper to taste\n"
                  "- Fresh parsley for garnish",
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
              "Bulgarian Gyuvetch Recipe:\n"
                  "Ingredients:\n"
                  "- 1 large onion, finely chopped\n"
                  "- 2-3 cloves of garlic, minced\n"
                  "- 2 large potatoes, peeled and diced\n"
                  "- 2 carrots, peeled and sliced\n"
                  "- 1 red bell pepper, chopped\n"
                  "- 1 green bell pepper, chopped\n"
                  "- 1 zucchini, sliced\n"
                  "- 1 eggplant, diced\n"
                  "- 3 ripe tomatoes, chopped (or 1 can of diced tomatoes)\n"
                  "- 1/2 cup green beans, chopped\n"
                  "- 1/2 cup peas (fresh or frozen)\n"
                  "- 1/4 cup vegetable oil\n"
                  "- 1 cup vegetable or chicken broth\n"
                  "- 1 teaspoon sweet paprika\n"
                  "- 1 teaspoon dried thyme\n"
                  "- Salt and pepper to taste\n"
                  "- Fresh parsley for garnish\n\n"

                  "Instructions:\n"
                  "Prepare the Vegetables:\n"
                  "- Wash, peel, and chop all the vegetables according to the specifications mentioned.\n\n"

                  "Sauté Onions and Garlic:\n"
                  "- In a large pot or Dutch oven, heat the vegetable oil over medium heat.\n"
                  "- Add the chopped onion and sauté until translucent.\n"
                  "- Add minced garlic and sauté for an additional minute.\n\n"

                  "Add Vegetables:\n"
                  "- Add all the chopped vegetables to the pot. Stir and cook for about 5-7 minutes until they start to soften.\n\n"

                  "Seasoning:\n"
                  "- Season the vegetables with sweet paprika, dried thyme, salt, and pepper. Mix well to coat the vegetables evenly with the spices.\n\n"

                  "Add Broth:\n"
                  "- Pour in the vegetable or chicken broth. Stir to combine.\n\n"

                  "Simmer:\n"
                  "- Bring the mixture to a simmer, then reduce the heat to low. Cover the pot and let it simmer for about 30-40 minutes or until the vegetables are tender.\n\n"

                  "Adjust Seasoning:\n"
                  "- Taste and adjust the seasoning if needed. Add more salt or pepper according to your preference.\n\n"

                  "Serve:\n"
                  "- Once the Gyuvetch is ready, garnish it with fresh parsley.\n"
                  "- Serve the stew hot on its own or with a side of bread.\n"
                  "Bulgarian Gyuvetch is a hearty and flavorful dish that's perfect for colder weather. It can be enjoyed on its own or paired with a dollop of yogurt.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildtaraPage() {
    String videoUrl = "https://www.youtube.com/watch?v=8I4SxE7_89E";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tarator",
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
              "Tripe Soup Recipe:\n"
                  "Ingredients:\n"
                  "- 1 pound (about 450g) tripe, cleaned and cut into small pieces\n"
                  "- 1 onion, finely chopped\n"
                  "- 2 cloves garlic, minced\n"
                  "- 1 tablespoon vegetable oil\n"
                  "- 1 tablespoon paprika\n"
                  "- 1 tablespoon white vinegar\n"
                  "- Salt and pepper to taste\n"
                  "- 1 teaspoon dried mint\n"
                  "- 1 teaspoon red pepper flakes (optional)\n"
                  "- 6 cups (1.5 liters) water\n"
                  "- 1 cup yogurt (optional, for serving)\n"
                  "- Chopped fresh parsley for garnish",
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
              "Shkembe Chorba Recipe:\n"
                  "Ingredients:\n"
                  "- 1 pound (about 450g) tripe, cleaned and cut into small pieces\n"
                  "- 1 onion, finely chopped\n"
                  "- 2 cloves garlic, minced\n"
                  "- 1 tablespoon vegetable oil\n"
                  "- 1 tablespoon paprika\n"
                  "- 1 tablespoon white vinegar\n"
                  "- Salt and pepper to taste\n"
                  "- 1 teaspoon dried mint\n"
                  "- 1 teaspoon red pepper flakes (optional)\n"
                  "- 6 cups (1.5 liters) water\n"
                  "- 1 cup yogurt (optional, for serving)\n"
                  "- Chopped fresh parsley for garnish\n\n"

                  "Instructions:\n"
                  "Prepare the Tripe:\n"
                  "- Clean the tripe thoroughly and cut it into small, bite-sized pieces.\n\n"

                  "Boil the Tripe:\n"
                  "- In a large pot, bring water to a boil.\n"
                  "- Add the tripe pieces and cook for about 10-15 minutes. Drain the tripe and set aside.\n\n"

                  "Saute Onion and Garlic:\n"
                  "- In a separate pan, heat the vegetable oil over medium heat.\n"
                  "- Add chopped onion and cook until softened.\n"
                  "- Add minced garlic and cook for an additional minute.\n\n"

                  "Add Paprika:\n"
                  "- Stir in the paprika, and cook for a couple of minutes, allowing the flavors to meld.\n\n"

                  "Combine Tripe and Onion Mixture:\n"
                  "- Add the pre-cooked tripe to the onion mixture and stir well.\n\n"

                  "Add Water:\n"
                  "- Pour in the water and bring the mixture to a simmer.\n\n"

                  "Season:\n"
                  "- Season with salt, pepper, and red pepper flakes (if using). Adjust the seasoning according to your taste.\n\n"

                  "Simmer:\n"
                  "- Let the soup simmer for about 1.5 to 2 hours or until the tripe is tender.\n\n"

                  "Finish and Serve:\n"
                  "- Stir in the white vinegar and dried mint. Allow the flavors to meld for an additional 10 minutes.\n"
                  "- Adjust the seasoning if needed.\n\n"

                  "Serve:\n"
                  "- Ladle the Shkembe Chorba into bowls.\n"
                  "- Optionally, you can serve it with a dollop of yogurt and garnish with chopped fresh parsley.\n"
                  "Shkembe Chorba is a distinctive and acquired taste, and it's often enjoyed with a side of bread. It's worth noting that this soup is traditionally eaten as a remedy for a hangover in Bulgaria.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildgsaladPage() {
    String videoUrl = "https://www.youtube.com/watch?v=by_RNRyzr30";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopska Salad",
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
              "Greek Salad Recipe:\n"
                  "Ingredients:\n"
                  "- 4 large tomatoes, diced\n"
                  "- 1 cucumber, diced\n"
                  "- 1 red or green bell pepper, diced\n"
                  "- 1 red onion, thinly sliced\n"
                  "- 200g feta cheese, crumbled\n"
                  "- Kalamata olives (optional)\n"
                  "- Fresh parsley, finely chopped, for garnish",
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
              "Shopska Salad Recipe:\n"
                  "Ingredients:\n"
                  "- 4 large tomatoes, diced\n"
                  "- 1 cucumber, diced\n"
                  "- 1 red or green bell pepper, diced\n"
                  "- 1 red onion, thinly sliced\n"
                  "- 200g feta cheese, crumbled\n"
                  "- Kalamata olives (optional)\n"
                  "- Fresh parsley, finely chopped, for garnish\n\n"

                  "Instructions:\n"
                  "Prepare the Vegetables:\n"
                  "- Wash and dice the tomatoes, cucumber, and bell pepper.\n"
                  "- Thinly slice the red onion.\n\n"

                  "Assemble the Salad:\n"
                  "- In a large salad bowl, combine the diced tomatoes, cucumber, bell pepper, and sliced red onion.\n"
                  "- Toss the vegetables together until well mixed.\n\n"

                  "Add Feta Cheese:\n"
                  "- Crumble the feta cheese over the salad.\n\n"

                  "Optional Olives:\n"
                  "- If you like, you can add Kalamata olives to the salad for an extra burst of flavor.\n\n"

                  "Make the Dressing:\n"
                  "- In a small bowl, whisk together the extra-virgin olive oil and red wine vinegar.\n"
                  "- Season the dressing with salt and pepper to taste.\n\n"

                  "Dress the Salad:\n"
                  "- Drizzle the dressing over the salad.\n\n"

                  "Toss Gently:\n"
                  "- Gently toss the salad to coat the vegetables and feta cheese evenly with the dressing.\n\n"

                  "Garnish:\n"
                  "- Garnish the Shopska Salad with finely chopped fresh parsley.\n\n"

                  "Serve:\n"
                  "- Serve the salad immediately as a side dish or on its own.\n"
                  "Shopska Salad is a great accompaniment to grilled meats or as a light and refreshing appetizer. It's a staple in Bulgarian cuisine and is often enjoyed during the summer months.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildupmaPage() {
    String videoUrl = "https://www.youtube.com/watch?v=cAoYsLXUKGI";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rava Upma",
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
              "Upma Recipe:\n"
                  "Ingredients:\n"
                  "- 1 cup semolina (rava or sooji)\n"
                  "- 2 tablespoons ghee or oil\n"
                  "- 1 teaspoon mustard seeds\n"
                  "- 1 teaspoon urad dal (black gram)\n"
                  "- 1 teaspoon chana dal (split chickpeas)\n"
                  "- 1 medium-sized onion, finely chopped\n"
                  "- 1-2 green chilies, finely chopped\n"
                  "- 1-inch piece of ginger, finely chopped\n"
                  "- A handful of cashew nuts (optional)\n"
                  "- A few curry leaves\n"
                  "- 2 1/2 cups water\n"
                  "- Salt to taste\n"
                  "- Fresh coriander leaves for garnish (optional)\n"
                  "- Lemon wedges for serving (optional)",
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
                  "Roast Semolina:\n"
                  "- Dry roast the semolina in a pan over medium heat until it turns light brown and you can smell a nutty aroma. Keep stirring to prevent it from burning. Once roasted, set it aside.\n\n"

                  "Prepare the Tempering:\n"
                  "- In the same pan, heat ghee or oil over medium heat.\n"
                  "- Add mustard seeds and let them splutter.\n"
                  "- Add urad dal and chana dal. Stir until they turn golden brown.\n\n"

                  "Sauté Aromatics:\n"
                  "- Add chopped onions, green chilies, and ginger. Sauté until the onions become translucent.\n\n"

                  "Add Cashew Nuts and Curry Leaves:\n"
                  "- If using cashew nuts, add them to the pan and sauté until they turn golden.\n"
                  "- Add curry leaves and stir for a few seconds.\n\n"

                  "Add Water:\n"
                  "- Carefully add water to the pan. Be cautious, as it may splutter.\n"
                  "- Add salt to taste and bring the water to a boil.\n\n"

                  "Add Roasted Semolina:\n"
                  "- Once the water is boiling, reduce the heat to low and slowly add the roasted semolina, stirring continuously to avoid lumps.\n\n"

                  "Cook and Simmer:\n"
                  "- Cook the mixture on low heat, stirring continuously until the semolina absorbs the water and the mixture thickens. This should take about 3-5 minutes.\n\n"

                  "Cover and Rest:\n"
                  "- Cover the pan with a lid and let the upma rest for a couple of minutes. This helps it to fluff up.\n\n"

                  "Fluff and Garnish:\n"
                  "- After resting, fluff the Rava Upma with a fork.\n"
                  "- Garnish with fresh coriander leaves if desired.\n\n"

                  "Serve:\n"
                  "- Serve hot with coconut chutney, pickle, or a side of yogurt. Optionally, you can serve it with lemon wedges for a tangy flavor.\n"
                  "Rava Upma is versatile and can be customized with vegetables like peas, carrots, and tomatoes for added nutrition and flavor. Adjust the spice level according to your preference.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildbreaduPage() {
    String videoUrl = "https://www.youtube.com/watch?v=h8CWDeRInoM";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bread Upma",
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
              "Bread Upma Recipe:\n"
                  "Ingredients:\n"
                  "- 4-5 slices of bread, cut into bite-sized pieces\n"
                  "- 2 tablespoons oil or ghee\n"
                  "- 1 teaspoon mustard seeds\n"
                  "- 1 teaspoon cumin seeds\n"
                  "- 1/2 cup finely chopped onions\n"
                  "- 1/4 cup finely chopped tomatoes\n"
                  "- 1/4 cup finely chopped bell peppers (optional)\n"
                  "- 1/4 cup frozen peas\n"
                  "- 1-2 green chilies, finely chopped\n"
                  "- 1/2 teaspoon turmeric powder\n"
                  "- 1/2 teaspoon red chili powder (adjust to taste)\n"
                  "- Salt to taste\n"
                  "- 1 tablespoon chopped coriander leaves for garnish\n"
                  "- Lemon wedges for serving (optional)",
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
                  "Prepare Bread:\n"
                  "- Cut the bread slices into bite-sized pieces. You can use fresh or slightly stale bread.\n\n"

                  "Tempering:\n"
                  "- Heat oil or ghee in a pan over medium heat.\n"
                  "- Add mustard seeds and cumin seeds. Allow them to splutter.\n\n"

                  "Sauté Aromatics:\n"
                  "- Add chopped onions and green chilies. Sauté until the onions become translucent.\n\n"

                  "Add Vegetables:\n"
                  "- Add chopped tomatoes, bell peppers (if using), and frozen peas. Cook until the vegetables are tender.\n\n"

                  "Spices:\n"
                  "- Add turmeric powder, red chili powder, and salt. Mix well.\n\n"

                  "Add Bread Pieces:\n"
                  "- Add the bite-sized bread pieces to the pan. Gently toss to coat the bread with the spices and vegetables.\n\n"

                  "Cook:\n"
                  "- Cook the mixture for 2-3 minutes, stirring occasionally. The bread should absorb the flavors and become slightly crisp.\n\n"

                  "Garnish:\n"
                  "- Garnish the Bread Upma with chopped coriander leaves.\n\n"

                  "Serve:\n"
                  "- Serve hot, optionally with lemon wedges on the side.\n\n"

                  "Tips:\n"
                  "- You can customize the recipe by adding other vegetables like carrots, corn, or beans.\n"
                  "- Adjust the spice level according to your taste preferences.\n"
                  "- You can also sprinkle a little chaat masala or garam masala for added flavor.\n"
                  "Bread Upma is a quick and versatile dish that can be made with minimal ingredients. It's perfect for breakfast or as an evening snack.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildparaPage() {
    String videoUrl = "https://www.youtube.com/watch?v=G8BSGywfRMs";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paratha",
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
              "Whole Wheat Roti Recipe:\n"
                  "Ingredients:\n"
                  "- 2 cups whole wheat flour (atta)\n"
                  "- Water (as needed)\n"
                  "- Salt (to taste)\n"
                  "- Ghee or oil (for cooking)",
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
                  "Prepare the Dough:\n"
                  "- In a mixing bowl, add the whole wheat flour and a pinch of salt.\n"
                  "- Gradually add water and knead the flour to make a soft, smooth dough. The dough should not be too sticky or too dry. Let it rest for about 15-20 minutes.\n\n"

                  "Divide the Dough:\n"
                  "- After resting, divide the dough into small lemon-sized balls.\n\n"

                  "Rolling the Parathas:\n"
                  "- Take one dough ball, dust it with a little flour, and roll it into a small circle using a rolling pin. The thickness depends on your preference, but it's typically around 6-8 inches in diameter.\n\n"

                  "Adding Ghee or Oil:\n"
                  "- Brush the rolled-out dough circle with ghee or oil. This step enhances the flavor and helps the paratha become flaky.\n\n"

                  "Fold and Roll:\n"
                  "- Fold the oiled dough circle in half, creating a semi-circle.\n"
                  "- Brush the semi-circle with ghee or oil and fold it again to form a triangle.\n\n"

                  "Roll Again:\n"
                  "- Dust the triangle with flour and roll it out gently to your desired thickness. Be careful not to press too hard, as you want the layers to remain separate.\n\n"

                  "Cooking the Paratha:\n"
                  "- Heat a griddle or flat pan over medium heat.\n"
                  "- Place the rolled paratha on the hot pan and cook for about 1-2 minutes until bubbles start to appear on the surface.\n\n"

                  "Flipping and Cooking:\n"
                  "- Flip the paratha and cook the other side, applying ghee or oil on the cooked side. Press the edges with a spatula to ensure even cooking.\n\n"

                  "Cook Until Golden Brown:\n"
                  "- Continue cooking and flipping until both sides are golden brown.\n\n"

                  "Repeat:\n"
                  "- Repeat the process for the remaining dough balls.\n\n"

                  "Serve:\n"
                  "- Serve the parathas hot with yogurt, pickles, or any side dish of your choice.\n\n"

                  "Variations:\n"
                  "- You can add various stuffing options to the paratha, such as spiced potatoes, paneer (Indian cottage cheese), or even minced meat.\n"
                  "- Experiment with different flours, like adding a small portion of gram flour (besan) for a unique flavor.\n"
                  "Parathas are versatile and can be enjoyed with various accompaniments. Feel free to get creative and tailor them to your taste preferences!",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildsamPage() {
    String videoUrl = "https://www.youtube.com/watch?v=3OZn-iCGf5s";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Samosas",
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
              "Aloo Samosa Recipe:\n"
                  "For the Dough:\n"
                  "- 2 cups all-purpose flour\n"
                  "- 1/4 cup ghee or vegetable oil\n"
                  "- 1/2 teaspoon salt\n"
                  "- Water (as needed)\n\n"

                  "For the Filling:\n"
                  "- 3 large potatoes, boiled, peeled, and mashed\n"
                  "- 1 cup green peas (fresh or frozen)\n"
                  "- 1 tablespoon vegetable oil\n"
                  "- 1 teaspoon cumin seeds\n"
                  "- 1 teaspoon mustard seeds\n"
                  "- 1 tablespoon ginger, finely chopped\n"
                  "- 1 tablespoon garlic, minced\n"
                  "- 1-2 green chilies, finely chopped (adjust to taste)\n"
                  "- 1 teaspoon ground coriander\n"
                  "- 1 teaspoon ground cumin\n"
                  "- 1/2 teaspoon turmeric powder\n"
                  "- 1/2 teaspoon garam masala\n"
                  "- Salt to taste\n"
                  "- Fresh coriander leaves, chopped\n"
                  "- Juice of half a lemon\n\n"

                  "Other:\n"
                  "- Oil for deep frying",
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
                  "For the Dough:\n"
                  "- In a large mixing bowl, combine the all-purpose flour, salt, and ghee or oil.\n"
                  "- Gradually add water and knead the mixture to form a smooth, firm dough.\n"
                  "- Cover the dough with a damp cloth and let it rest for at least 30 minutes.\n\n"

                  "For the Filling:\n"
                  "- Boil, peel, and mash the potatoes. Set aside.\n"
                  "- In a pan, heat vegetable oil over medium heat.\n"
                  "- Add cumin seeds and mustard seeds. When they splutter, add chopped ginger, minced garlic, and green chilies.\n"
                  "- Sauté until the raw smell disappears, then add ground coriander, ground cumin, turmeric powder, and garam masala. Mix well.\n"
                  "- Add green peas and cook for a few minutes.\n"
                  "- Add the mashed potatoes, salt, and fresh coriander leaves. Mix thoroughly.\n"
                  "- Stir in lemon juice for a touch of acidity.\n"
                  "- Allow the filling to cool completely.\n\n"

                  "Assembling and Frying Samosas:\n"
                  "- Divide the dough into equal-sized portions and roll each portion into a ball.\n"
                  "- Roll each ball into a thin oval or circle.\n"
                  "- Cut the circle in half to form two semi-circles.\n"
                  "- Create a cone shape by folding each semi-circle and sealing the edges with a little water.\n"
                  "- Fill each cone with the prepared potato and pea filling.\n"
                  "- Seal the open edge, pinching it together to form a triangular shape.\n"
                  "- Heat oil for deep frying in a pan over medium heat.\n"
                  "- Fry the samosas until they turn golden brown and crisp.\n"
                  "- Remove the samosas and place them on paper towels to drain excess oil.\n"
                  "- Serve hot with mint chutney or tamarind sauce.\n\n"

                  "Enjoy your homemade samosas! Feel free to experiment with different fillings and get creative with the spices to suit your taste preferences.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildpaniPage() {
    String videoUrl = "https://www.youtube.com/watch?v=Lno88iU9J4w";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pani Puri",
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
              "Pani Puri Recipe:\n"
                  "For the Puri:\n"
                  "- 1 cup semolina (sooji)\n"
                  "- 1/4 cup all-purpose flour (maida)\n"
                  "- Water (as needed)\n"
                  "- Oil for frying\n\n"

                  "For the Pani (Spiced Water):\n"
                  "- 1 cup mint leaves\n"
                  "- 1/2 cup coriander leaves\n"
                  "- 2-3 green chilies (adjust to taste)\n"
                  "- 1-inch piece of ginger\n"
                  "- 1 small onion, chopped\n"
                  "- 1 small raw mango, peeled and chopped\n"
                  "- 1 teaspoon roasted cumin powder\n"
                  "- 1 teaspoon black salt\n"
                  "- 1 teaspoon chaat masala\n"
                  "- 1/2 teaspoon black pepper powder\n"
                  "- 1/4 cup tamarind pulp\n"
                  "- Salt to taste\n"
                  "- 3-4 cups chilled water\n\n"

                  "For the Filling:\n"
                  "- Boiled and mashed potatoes\n"
                  "- Cooked and seasoned chickpeas\n"
                  "- Tamarind chutney\n"
                  "- Sev (crispy chickpea noodles)",
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
    "For the Puri:\n"
    "Make the Dough:\n"
    "- Mix semolina and all-purpose flour.\n"
    "- Gradually add water and knead to form a smooth, firm dough.\n"
    "- Cover and let it rest for 20-30 minutes.\n\n"

    "Divide and Roll:\n"
    "- Divide the dough into small balls.\n"
    "- Roll each ball into a thin, small circle (approximately 2 inches in diameter).\n\n"

    "Fry:\n"
    "- Heat oil for frying in a pan.\n"
    "- Fry the rolled puris until they puff up and turn golden brown.\n"
    "- Remove and place on paper towels to drain excess oil.\n\n"

    "For the Pani:\n"
    "Blend Ingredients:\n"
    "- In a blender, combine mint leaves, coriander leaves, green chilies, ginger, chopped onion, and raw mango.\n"
    "- Blend into a smooth paste.\n\n"

    "Prepare Spiced Water:\n"
    "- In a large bowl, mix the paste with roasted cumin powder, black salt, chaat masala, black pepper powder, tamarind pulp, and salt.\n"
    "- Add chilled water and mix well.\n"
    "- Adjust the seasoning according to your taste.\n\n"

    "Assembling Pani Puri:\n"
    "Make a Hole:\n"
    "- Take each fried puri and make a small hole in the center, large enough to fill the ingredients.\n\n"

    "Fillings:\n"
    "- Add mashed potatoes and seasoned chickpeas into each puri.\n\n"

    "Tamarind Chutney:\n"
    "- Drizzle tamarind chutney over the filling.\n\n"

    "Sev:\n"
    "- Top with sev for added crunch.\n\n"

    "Pani:\n"
    "- Dip the filled puri into the prepared spiced water.\n\n"

    "Serve immediately and enjoy the burst of flavors!\n"
    "Pani Puri is best when served immediately to maintain the crispiness of the puris. It's a fun and interactive snack that allows everyone to customize their puris according to their taste preferences.",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Scaffold buildkacPage() {
    String videoUrl = "https://www.youtube.com/watch?v=lvI0so7aESw";
    String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? ""; // Add null check

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kachori",
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
              "Dal Kachori Recipe:\n"
                  "For the Outer Covering:\n"
                  "- 2 cups all-purpose flour (maida)\n"
                  "- 1/4 cup semolina (sooji)\n"
                  "- 1/4 cup ghee or oil\n"
                  "- A pinch of baking soda\n"
                  "- Salt to taste\n"
                  "- Water (as needed)\n\n"

                  "For the Filling:\n"
                  "- 1 cup yellow moong dal (split yellow lentils)\n"
                  "- 1 teaspoon fennel seeds\n"
                  "- 1 teaspoon cumin seeds\n"
                  "- 1/2 teaspoon asafoetida (hing)\n"
                  "- 1 teaspoon ginger, grated\n"
                  "- 1 green chili, finely chopped (adjust to taste)\n"
                  "- 1/2 teaspoon turmeric powder\n"
                  "- 1 teaspoon red chili powder (adjust to taste)\n"
                  "- 1 teaspoon coriander powder\n"
                  "- 1/2 teaspoon garam masala\n"
                  "- 1 tablespoon oil\n"
                  "- Salt to taste\n\n"

                  "Other:\n"
                  "- Oil for deep frying",
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
                  "For the Outer Covering:\n"
                  "Prepare the Dough:\n"
                  "- In a mixing bowl, combine all-purpose flour, semolina, ghee or oil, baking soda, and salt.\n"
                  "- Gradually add water and knead the mixture to form a smooth, firm dough.\n"
                  "- Cover and let it rest for at least 15-20 minutes.\n\n"

                  "For the Filling:\n"
                  "Prepare Moong Dal:\n"
                  "- Wash and soak the moong dal in water for about 2 hours.\n"
                  "- Drain the water and grind the dal coarsely without adding any water.\n\n"

                  "Prepare the Filling:\n"
                  "- Heat oil in a pan. Add fennel seeds, cumin seeds, and asafoetida.\n"
                  "- Add grated ginger and chopped green chili. Sauté for a minute.\n"
                  "- Add the coarsely ground moong dal, turmeric powder, red chili powder, coriander powder, garam masala, and salt.\n"
                  "- Cook the dal mixture until it becomes dry and the raw smell disappears.\n"
                  "- Allow the filling to cool.\n\n"

                  "Assembling and Frying Kachori:\n"
                  "Divide Dough:\n"
                  "- Divide the rested dough into small lemon-sized balls.\n"
                  "- Roll Out:\n"
                  "- Roll each ball into a small circle, about 3 inches in diameter.\n"
                  "- Add Filling:\n"
                  "- Place a spoonful of the moong dal filling in the center of the rolled-out dough.\n"
                  "- Seal and Shape:\n"
                  "- Carefully bring the edges together and seal to form a stuffed ball.\n"
                  "- Flatten the ball slightly with your palms.\n"
                  "- Roll Again:\n"
                  "- Gently roll out the stuffed ball into a slightly thick disc, taking care not to let the filling come out.\n"
                  "- Deep Fry:\n"
                  "- Heat oil for deep frying in a pan over medium heat.\n"
                  "- Once the oil is hot, gently slide the rolled kachori into the oil.\n"
                  "- Fry until it puffs up and turns golden brown on both sides.\n"
                  "- Remove and place on paper towels to drain excess oil.\n\n"

                  "Serve:\n"
                  "- Serve the khasta kachori hot with tamarind chutney or mint chutney.\n"
                  "Enjoy your homemade Khasta Kachori, a delicious and crispy Indian snack!",
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
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(),
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



