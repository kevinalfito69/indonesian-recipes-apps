import 'package:flutter/material.dart';
import 'package:indonesian_food_recipes/model/food_recipes.dart';
import 'package:indonesian_food_recipes/detail_screen.dart';
import 'package:indonesian_food_recipes/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      LayoutBuilder(builder: (BuildContext context, BoxConstraints constrains){
        if(constrains.maxWidth <=600) {
          return const GridFoodList(gridCount: 2,);
        }else if(constrains.maxWidth <= 1200){
          return const GridFoodList(gridCount: 3,);
        }else{
          return const GridFoodList( gridCount: 6,);
        }

      },)
      ),
    );
  }
}

class GridFoodList extends StatelessWidget {
  final String imgProfileUrl = 'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg';
  final int gridCount;
  const GridFoodList({super.key, required this.gridCount});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Hello Kevin,",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "What would you like to cook today?",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    child: IconButton(
                        iconSize: 80,
                        icon:  Hero(
                          tag: "profile_pict",
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(imgProfileUrl)),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ProfileScreen(imageUrl: imgProfileUrl);
                          }));
                        }
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Discover",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Ready for cook something?",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Quick Dishes",
                              style: TextStyle(fontSize: 15),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Courses",
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Daily Recipes",
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Authentic",
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "High Rating",
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: gridCount,
              children: foodRecipes.map((recipe) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(recipe: recipe);
                    }));
                  },
                  child: Card.filled(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            children: [
                              Hero(
                                tag: recipe.name,
                                child: Image.asset(
                                  recipe.image,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.lightGreenAccent),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 5),
                                child: Text(
                                    "${recipe.duration} Min | ${recipe.level}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            recipe.name,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, right: 8.0, left: 8.0),
                          child: Text(
                            recipe.description,
                            style: const TextStyle(),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList()),
        )
      ],
    );
  }
}
