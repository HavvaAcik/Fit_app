import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RecipesPage(),
  ));
}

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  items: <String>['Filtre 1', 'Filtre 2', 'Filtre 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Filtreleme işlemleri
                  },
                  hint: Text(
                    'Filtre',
                    style: TextStyle(color: Colors.black),
                  ),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.filter_list, color: Colors.black),
                ),
                DropdownButton<String>(
                  items: <String>['Sırala 1', 'Sırala 2', 'Sırala 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Sıralama işlemleri
                  },
                  hint: Text(
                    'Sırala',
                    style: TextStyle(color: Colors.black),
                  ),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.sort, color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                RecipeCard(
                  recipeName: 'Tavuklu Salata',
                  recipeDescription: 'Tavuklu salata tarifi...',
                  recipeImage: 'lib/assets/recipes_assets/recipe_1.png',
                ),
                RecipeCard(
                  recipeName: 'Çoban Salata',
                  recipeDescription: 'Çoban salata tarifi...',
                  recipeImage: 'lib/assets/recipes_assets/recipe_1.png',
                ),
                RecipeCard(
                  recipeName: 'Cevizli Salata',
                  recipeDescription: 'Cevizli salata tarifi...',
                  recipeImage: 'lib/assets/recipes_assets/recipe_1.png',
                ),
                RecipeCard(
                  recipeName: 'Roka Salata',
                  recipeDescription: 'Roka salata tarifi...',
                  recipeImage: 'lib/assets/recipes_assets/recipe_1.png',
                ),
                RecipeCard(
                  recipeName: 'Mevsim Salata',
                  recipeDescription: 'Mevsim salata tarifi...',
                  recipeImage: 'lib/assets/recipes_assets/recipe_1.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String recipeName;
  final String recipeDescription;
  final String recipeImage;

  RecipeCard({
    required this.recipeName,
    required this.recipeDescription,
    required this.recipeImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailPage(
              recipeName: recipeName,
              recipeDescription: recipeDescription,
              recipeImage: recipeImage,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListTile(
            leading: Image.asset(
              recipeImage,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(
              recipeName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              recipeDescription,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  final String recipeName;
  final String recipeDescription;
  final String recipeImage;

  RecipeDetailPage({
    required this.recipeName,
    required this.recipeDescription,
    required this.recipeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipeImage,
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              recipeName,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              recipeDescription,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
