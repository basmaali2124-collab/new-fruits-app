import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF204F38),
        foregroundColor: Colors.white,
        maximumSize: Size(0.7.sw, 52)
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
    ),
    cardTheme: CardThemeData(color: Colors.white, elevation: 4),
    textTheme: TextTheme(),
    colorScheme: .fromSeed(seedColor: Color(0xFF204F38)),
  );
}
