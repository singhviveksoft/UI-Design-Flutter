import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    
    return ThemeData(
        
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.lightGreen,
        ));
  }
}
