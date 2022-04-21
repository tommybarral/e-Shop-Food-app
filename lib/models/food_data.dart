import 'package:flutter/foundation.dart';
import 'package:eshop_food_app/models/food.dart';
import 'package:flutter/material.dart';

class FoodData with ChangeNotifier {

  final List<Food> _foodItems = [
    Food(
        title: 'Chinese noodle',
        imageUrl: 'https://recette-cuisine-facile.com/wp-content/uploads/2022/01/nouilles-sautees-au-poulet-chow-mein.jpg',
        stars: 5,
        note: 45,
        comments: 348,
        difficulty: 'normal',
        location: 2,
        timer: '20',
    ),
    Food(
      title: 'pasta italiana',
      imageUrl: 'http://www.lesfoodies.com/_recipeimage/101094/pasta-italiana-per-choupetta.jpg',
      stars: 5,
      note: 4,
      comments: 348,
      difficulty: 'easy',
      location: 2,
      timer: '15',
    ),
    Food(
      title: 'Chinese noodle',
      imageUrl: 'https://recette-cuisine-facile.com/wp-content/uploads/2022/01/nouilles-sautees-au-poulet-chow-mein.jpg',
      stars: 5,
      note: 45,
      comments: 348,
      difficulty: 'normal',
      location: 2,
      timer: '20',
    ),
    Food(
      title: 'pasta italiana',
      imageUrl: 'http://www.lesfoodies.com/_recipeimage/101094/pasta-italiana-per-choupetta.jpg',
      stars: 5,
      note: 4,
      comments: 348,
      difficulty: 'easy',
      location: 2,
      timer: '15',
    ),Food(
      title: 'Chinese noodle',
      imageUrl: 'https://recette-cuisine-facile.com/wp-content/uploads/2022/01/nouilles-sautees-au-poulet-chow-mein.jpg',
      stars: 5,
      note: 45,
      comments: 348,
      difficulty: 'normal',
      location: 2,
      timer: '20',
    ),
  ];

  List<Food> get foodItems {
    return [..._foodItems];
  }


}