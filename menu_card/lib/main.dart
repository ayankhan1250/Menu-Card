import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/my_home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2b221c),
        scaffoldBackgroundColor: const Color(0xFF2b221c),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFFFFF3E0),
        ),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Color(0xFFFFF3E0)),
            bodyMedium: TextStyle(color: Color(0xFFFFF3E0)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2b221c),
          foregroundColor: Color(0xFFFFF3E0),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor:  Color(0xFF2b221c)),
      ),
       home:
      MyHomePage( filters: {
        'glutenFree': false,
        'lactoseFree': false,
        'vegetarian': false,
        'vegan': false,
      },),
    );
  }
}



