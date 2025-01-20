import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'meal_detail_page.dart';
import 'my_home_page.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key, required this.favoriteFunction});
  final Function favoriteFunction;
  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favorites.isEmpty
          ? Center(
              child: Text(
                'Nothing Here !',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: favorites.length,
              itemBuilder: (ctx, index) {
                final meal = favorites[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(()=>MealDetailScreen(
                        meal: meal,
                        updatePage: () {
                          setState(() {});
                        },
                        favoriteFunction: widget.favoriteFunction));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              meal.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withValues(alpha: 0.6)
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  meal.name,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.timer,
                                        color: Color(0xFFFFF3E0), size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      '${meal.preparationTime} Min',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Icon(Icons.work,
                                        color: Color(0xFFFFF3E0), size: 16),
                                    const SizedBox(width: 5),
                                    Text(
                                      meal.type,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Text(
                                      '₹ ${meal.price.toStringAsFixed(0)}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
