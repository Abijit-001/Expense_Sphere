import 'package:expanse_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent);
var kDarkScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: Colors.white12);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kDarkScheme.primaryContainer,
          foregroundColor: kDarkScheme.onPrimaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kDarkScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkScheme.primaryContainer,
            foregroundColor: kDarkScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kDarkScheme.onSecondaryContainer,
                fontSize: 17,
              ),
              titleMedium: TextStyle(
                fontWeight: FontWeight.normal,
                color: kDarkScheme.onSecondaryContainer,
                fontSize: 15,
              ),
              titleSmall: TextStyle(
                fontWeight: FontWeight.normal,
                color: kDarkScheme.onSecondaryContainer,
                fontSize: 13,
              ),
            ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 17,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
