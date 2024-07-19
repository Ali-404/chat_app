import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeData? currentTheme;


  
  // load theme on start
  ThemeProvider(){
    setTheme("light");
  }
  // light theme
  ThemeData lightTheme = ThemeData(

    // Color Sceme
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      secondary: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.red,
      error: Colors.redAccent,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black

    ),

    appBarTheme: AppBarTheme(
      backgroundColor:  Colors.indigo[900],
      foregroundColor: Colors.white,

      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarIconBrightness: Brightness.light
      ),
    ),
    



    
    
  );
  // dark theme
  ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    
  );

  
  
  
  setTheme(String theme){
    currentTheme = theme == "light" ? lightTheme : darkTheme;
    notifyListeners();
  }




}