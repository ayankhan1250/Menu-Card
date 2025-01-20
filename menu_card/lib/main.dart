import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/my_home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
    const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    ThemeMode themeMode=ThemeMode.dark;

   void toggleTheme(){

     setState(() {
       themeMode=(themeMode==ThemeMode.dark)?ThemeMode.light:ThemeMode.dark;
     });
   }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFFE4B5),
        scaffoldBackgroundColor: const Color(0xFFFFF3E0),
        listTileTheme: const ListTileThemeData(
          textColor: Color(0xFF8B4513),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF8B4513)),
          bodyMedium: TextStyle(color: Color(0xFFFFF3E0)),
          displayLarge: TextStyle(color: Color(0xFF6e3200)),
          titleLarge: TextStyle(color: Color(0xFF2b221c)),
          bodySmall: TextStyle(color: Color(0xFFFF7043))
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFA07A),
          foregroundColor: Color(0xFFFFF3E0),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFFFA07A),
          unselectedIconTheme: IconThemeData()
        ),

      ),
      darkTheme: ThemeData(
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
      themeMode: themeMode,
       home:
      MyHomePage( filters: {
        'glutenFree': false,
        'lactoseFree': false,
        'vegetarian': false,
        'vegan': false,
      },
        toggleTheme: toggleTheme,),
    );
  }
}



