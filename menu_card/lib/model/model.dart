import 'package:flutter/material.dart';
class Category{
  String categoryId;
  String name;
  Color color;
  Category(this.categoryId,this.name,this.color,);
}
final categories=[
  Category( 'c1','Italian', const Color(0xff80228d)),
  Category('c2','Quick & Easy', const Color(0xffc73a2e)),
  Category('c3','Hamburgers', const Color(0xffce7c00)),
  Category('c4','German', const Color(0xffc99800)),
  Category('c5','Light & Lovely', const Color(0xff2275b9)),
  Category('c6','Exotic', const Color(0xff40823f)),
  Category('c7','Breakfast', const Color(0xff2275b9)),
  Category('c8','Asian', const Color(0xff74a040)),
  Category('c9','French', const Color(0xffc01c54)),
  Category('c10','Summer', const Color(0xff007e71)),
];

class Meals {
  final String uid;
  final String category;
  final String name;
  final String image;
  final List<String> ingredients;
  final List<String> steps;
  final int preparationTime;
  final double price;
  final String type;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;

  Meals({
    required this.uid,
    required this.category,
    required this.name,
    required this.image,
    required this.ingredients,
    required this.steps,
    required this.preparationTime,
    required this.price,
    required this.type,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegetarian,
    required this.isVegan
  });
}
final List<Meals> meals = [
  Meals(
    isGlutenFree: true,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm1',
    name: 'Spaghetti Carbonara',
    image: 'images/Italian.jpg',
    category: 'Italian',
    ingredients: [
      'Spaghetti',
      'Eggs',
      'Pancetta',
      'Parmesan cheese',
      'Garlic',
      'Black pepper'
    ],
    steps: [
      'Boil spaghetti.',
      'Cook pancetta with garlic.',
      'Whisk eggs and cheese.',
      'Combine spaghetti with pancetta and egg mixture.',
      'Season with black pepper and serve.'
    ],
    preparationTime: 30,
    price: 350.0,
    type: 'spicy',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm2',
    name: 'Margherita Pizza',
    image: 'images/Italian.jpg',
    category: 'Italian',
    ingredients: [
      'Pizza dough',
      'Tomato sauce',
      'Fresh mozzarella',
      'Basil leaves',
      'Olive oil'
    ],
    steps: [
      'Preheat oven to 220°C.',
      'Roll out dough and spread tomato sauce.',
      'Add mozzarella and basil.',
      'Bake in oven for 10-15 minutes.',
      'Drizzle olive oil and serve.'
    ],
    preparationTime: 20,
    price: 250.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: true,
    isVegetarian: false,
    isVegan: false,
    uid: 'm3',
    name: 'Grilled Cheese Sandwich',
    image: 'images/Quick & Easy.jpg',
    category: 'Quick & Easy',
    ingredients: [
      'Bread',
      'Cheese',
      'Butter'
    ],
    steps: [
      'Butter the bread on both sides.',
      'Place cheese between two slices of bread.',
      'Grill on both sides until golden brown.'
    ],
    preparationTime: 10,
    price: 120.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: true,
    isVegan: false,
    uid: 'm4',
    name: 'Egg Salad',
    image: 'images/Quick & Easy.jpg',
    category: 'Quick & Easy',
    ingredients: [
      'Eggs',
      'Mayonnaise',
      'Mustard',
      'Salt',
      'Pepper'
    ],
    steps: [
      'Boil eggs and chop them.',
      'Mix with mayonnaise, mustard, salt, and pepper.',
      'Serve chilled.'
    ],
    preparationTime: 15,
    price: 150.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: true,
    uid: 'm5',
    name: 'Classic Beef Burger',
    image: 'images/Hamburgers.jpg',
    category: 'Hamburgers',
    ingredients: [
      'Ground beef',
      'Burger buns',
      'Cheese',
      'Lettuce',
      'Tomato',
      'Onion',
      'Pickles'
    ],
    steps: [
      'Form beef patties and grill them.',
      'Toast burger buns.',
      'Assemble the burger with cheese, lettuce, tomato, onion, and pickles.'
    ],
    preparationTime: 25,
    price: 400.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: true,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm6',
    name: 'Chicken Burger',
    image: 'images/Hamburgers.jpg',
    category: 'Hamburgers',
    ingredients: [
      'Chicken breast',
      'Burger buns',
      'Lettuce',
      'Tomato',
      'Mayonnaise'
    ],
    steps: [
      'Grill the chicken breast.',
      'Toast the buns.',
      'Assemble with lettuce, tomato, and mayonnaise.'
    ],
    preparationTime: 20,
    price: 300.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: true,
    isVegetarian: false,
    isVegan: false,
    uid: 'm7',
    name: 'Bratwurst',
    image: 'images/German.jpg',
    category: 'German',
    ingredients: [
      'Bratwurst sausage',
      'Sauerkraut',
      'Mustard',
      'Bread'
    ],
    steps: [
      'Grill or fry bratwurst sausages.',
      'Serve with sauerkraut and mustard.'
    ],
    preparationTime: 20,
    price: 350.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: true,
    isVegan: false,
    uid: 'm8',
    name: 'Sauerbraten',
    image: 'images/German.jpg',
    category: 'German',
    ingredients: [
      'Beef roast',
      'Onions',
      'Vinegar',
      'Spices',
      'Potatoes'
    ],
    steps: [
      'Marinate beef roast in vinegar and spices.',
      'Slow cook with onions until tender.',
      'Serve with potatoes.'
    ],
    preparationTime: 180,
    price: 500.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: true,
    uid: 'm9',
    name: 'Grilled Salmon Salad',
    image: 'images/Light & Lovely.jpg',
    category: 'Light & Lovely',
    ingredients: [
      'Salmon fillet',
      'Mixed greens',
      'Lemon',
      'Olive oil',
      'Avocado'
    ],
    steps: [
      'Grill salmon fillet.',
      'Toss mixed greens with olive oil and lemon juice.',
      'Serve salmon on top with avocado slices.'
    ],
    preparationTime: 25,
    price: 450.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: true,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm10',
    name: 'Avocado Toast',
    image: 'images/Light & Lovely.jpg',
    category: 'Light & Lovely',
    ingredients: [
      'Bread',
      'Avocado',
      'Olive oil',
      'Lemon',
      'Salt'
    ],
    steps: [
      'Toast the bread.',
      'Mash avocado with lemon and salt.',
      'Spread avocado on the toast and drizzle with olive oil.'
    ],
    preparationTime: 10,
    price: 180.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: true,
    isVegetarian: false,
    isVegan: false,
    uid: 'm11',
    name: 'Sushi Rolls',
    image: 'images/Exotic.jpg',
    category: 'Exotic',
    ingredients: [
      'Sushi rice',
      'Nori seaweed',
      'Cucumber',
      'Avocado',
      'Fish (tuna or salmon)'
    ],
    steps: [
      'Cook sushi rice and season it.',
      'Roll rice, cucumber, avocado, and fish in nori seaweed.',
      'Slice into bite-sized pieces.'
    ],
    preparationTime: 45,
    price: 600.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: true,
    isVegan: false,
    uid: 'm12',
    name: 'Pad Thai',
    image: 'images/Exotic.jpg',
    category: 'Exotic',
    ingredients: [
      'Rice noodles',
      'Tofu or shrimp',
      'Egg',
      'Peanuts',
      'Lime'
    ],
    steps: [
      'Cook rice noodles.',
      'Stir fry tofu or shrimp with egg.',
      'Add noodles and top with peanuts and lime.'
    ],
    preparationTime: 30,
    price: 350.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: true,
    uid: 'm13',
    name: 'Pancakes',
    image: 'images/Breakfast.jpg',
    category: 'Breakfast',
    ingredients: [
      'Flour',
      'Eggs',
      'Milk',
      'Baking powder',
      'Maple syrup'
    ],
    steps: [
      'Mix flour, eggs, milk, and baking powder.',
      'Cook pancakes on a griddle.',
      'Serve with maple syrup.'
    ],
    preparationTime: 15,
    price: 180.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: true,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm14',
    name: 'Omelette',
    image: 'images/Breakfast.jpg',
    category: 'Breakfast',
    ingredients: [
      'Eggs',
      'Cheese',
      'Tomatoes',
      'Spinach'
    ],
    steps: [
      'Whisk eggs and pour into a heated pan.',
      'Add cheese, tomatoes, and spinach.',
      'Cook until set, fold, and serve.'
    ],
    preparationTime: 15,
    price: 100.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: true,
    isVegetarian: false,
    isVegan: false,
    uid: 'm15',
    name: 'Dim Sum',
    image: 'images/Asian.jpg',
    category: 'Asian',
    ingredients: [
      'Wonton wrappers',
      'Shrimp',
      'Pork',
      'Vegetables'
    ],
    steps: [
      'Prepare filling with shrimp, pork, and vegetables.',
      'Wrap the filling in wonton wrappers.',
      'Steam the dim sum until cooked.'
    ],
    preparationTime: 40,
    price: 350.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: true,
    isVegan: false,
    uid: 'm16',
    name: 'Fried Rice',
    image: 'images/Asian.jpg',
    category: 'Asian',
    ingredients: [
      'Rice',
      'Eggs',
      'Carrots',
      'Peas',
      'Soy sauce'
    ],
    steps: [
      'Cook rice and set aside.',
      'Stir fry eggs, carrots, and peas.',
      'Add rice and soy sauce, stir fry together.'
    ],
    preparationTime: 20,
    price: 200.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: true,
    uid: 'm17',
    name: 'Croissant',
    image: 'images/French.jpg',
    category: 'French',
    ingredients: [
      'Flour',
      'Butter',
      'Yeast',
      'Milk',
      'Sugar'
    ],
    steps: [
      'Prepare dough with flour, yeast, and butter.',
      'Roll out and fold the dough.',
      'Bake until golden brown.'
    ],
    preparationTime: 120,
    price: 250.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: true,
    isLactoseFree: false,
    isVegetarian: false,
    isVegan: false,
    uid: 'm18',
    name: 'Quiche Lorraine',
    image: 'images/French.jpg',
    category: 'French',
    ingredients: [
      'Pastry crust',
      'Eggs',
      'Cream',
      'Bacon',
      'Cheese'
    ],
    steps: [
      'Prepare crust and bake partially.',
      'Mix eggs, cream, bacon, and cheese.',
      'Pour mixture into crust and bake.'
    ],
    preparationTime: 90,
    price: 400.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: true,
    isVegetarian: false,
    isVegan: false,
    uid: 'm19',
    name: 'Fruit Salad',
    image: 'images/Summer.jpg',
    category: 'Summer',
    ingredients: [
      'Watermelon',
      'Strawberries',
      'Blueberries',
      'Mint',
      'Honey'
    ],
    steps: [
      'Chop fruits and mix in a bowl.',
      'Top with mint leaves and honey.'
    ],
    preparationTime: 10,
    price: 180.0,
    type: 'simple',
  ),
  Meals(
    isGlutenFree: false,
    isLactoseFree: false,
    isVegetarian: true,
    isVegan: false,
    uid: 'm20',
    name: 'Grilled Veggie Skewers',
    image: 'images/Summer.jpg',
    category: 'Summer',
    ingredients: [
      'Zucchini',
      'Bell peppers',
      'Onions',
      'Olive oil'
    ],
    steps: [
      'Skewer the vegetables.',
      'Grill until tender and slightly charred.'
    ],
    preparationTime: 30,
    price: 250.0,
    type: 'simple',
  ),
];
