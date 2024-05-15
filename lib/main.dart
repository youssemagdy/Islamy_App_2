import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(
            size: 20,
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB7935F),
          primary: const Color(0xFFB7935F),
          secondary: const Color(0xFFB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName : (_) => HomeScreen(),
      },
    );
  }
}