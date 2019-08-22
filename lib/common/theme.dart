import 'package:flutter/material.dart';

final appTheme = ThemeData(
  //scaffoldBackgroundColor: Color(0xFF212121),
scaffoldBackgroundColor: Colors.grey[800],
  primarySwatch: Colors.grey,
  textTheme: TextTheme(
    title: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w600,
      fontSize: 24,
      color: Colors.white.withOpacity(0.95),
    ),
    subtitle: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Colors.white.withOpacity(0.85),
      ),
      body1: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
        color: Colors.grey[350],
        ),
  ),
);