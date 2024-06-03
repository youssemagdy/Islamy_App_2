import 'package:flutter/material.dart';

class AppTheme{

  static bool isDark = true;
  static Color lightPrimary = const Color(0xFFB7935F);
  static Color darkPrimary = const Color(0xFF141A2E);
  static Color darkSecondary = const Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        )
    ),

    colorScheme: ColorScheme.fromSeed(seedColor: lightPrimary,
      primary: lightPrimary,
      secondary: const Color(0xFFB7935F).withOpacity(0.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),

    dividerColor: lightPrimary,

    textTheme: TextTheme(
      titleLarge: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      labelMedium: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      bodyMedium: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      labelSmall: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        // unSelected
        fontSize: 20,
        color: lightPrimary,
      ),
      headlineLarge: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600
      ),
      titleSmall: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600
      ),
    ),

    cardTheme: const CardTheme(
      color: Colors.white,
      margin: EdgeInsets.all(20),
      elevation: 10,
      surfaceTintColor: Colors.transparent,
    ),

    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(
        size: 32,
      ),
      unselectedIconTheme: const IconThemeData(
        size: 20,
      ),
    ),

    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white,
        )
    ),

    colorScheme: ColorScheme.fromSeed(seedColor: darkSecondary,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),

    dividerColor: darkSecondary,

    textTheme: TextTheme(
      titleLarge: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelMedium: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: darkSecondary,
      ),
      labelSmall: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        // unSelected
        fontSize: 20,
        color: darkSecondary,
      ),
      headlineLarge: const TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600
      ),
      titleSmall: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600
      ),
    ),

    cardTheme: CardTheme(
      color: darkPrimary,
      margin: const EdgeInsets.all(20),
      elevation: 20,
      surfaceTintColor: Colors.transparent,
    ),

    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
    ),
  );
}