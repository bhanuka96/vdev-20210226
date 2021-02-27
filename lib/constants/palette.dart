import 'package:flutter/material.dart';

class Palette {
  static MaterialColor materialColor = MaterialColor(
    0xFFe63c2d,
    <int, Color>{
      50: Color(0xFFe63c2d),
      100: Color(0xFFe63c2d),
      200: Color(0xFFe63c2d),
      300: Color(0xFFe63c2d),
      400: Color(0xFFe63c2d),
      500: Color(0xFFe63c2d),
      600: Color(0xFFe63c2d),
      700: Color(0xFFe63c2d),
      800: Color(0xFFe63c2d),
      900: Color(0xFFe63c2d),
    },
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color orange = Color(0xFFe63c2d);
  static const Color red = Color(0xFFEC2630);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 20.0, color: black),
    bodyText1: TextStyle(fontSize: 16.0, color: black),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.black),
    button: TextStyle(fontSize: 15.0, color: black, fontWeight: FontWeight.w600),
    headline6: TextStyle(fontSize: 16.0, color: black),
    subtitle1: TextStyle(fontSize: 16.0, color: black),
    caption: TextStyle(fontSize: 12.0, color: black),
  );

  static final IconThemeData _iconThemeData = IconThemeData(color: black);

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // fontFamily: font1,
    scaffoldBackgroundColor: white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: orange),
    appBarTheme: AppBarTheme(color: orange, iconTheme: IconThemeData(color: black), textTheme: _lightTextTheme, actionsIconTheme: _iconThemeData),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5),))),
       backgroundColor: MaterialStateProperty.resolveWith((states) => white),
      //    minimumSize: MaterialStateProperty.resolveWith((states) => Size(0, 0)), padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.all(0)),
      textStyle: MaterialStateProperty.resolveWith((states) =>  TextStyle(fontSize: 14.0, color: black)),
    ),),
    colorScheme: ColorScheme.light(
      primary: orange,
      primaryVariant: white,
    ),
    snackBarTheme: SnackBarThemeData(backgroundColor: black, behavior: SnackBarBehavior.fixed, actionTextColor: white),
    iconTheme: IconThemeData(
      color: black,
    ),
    popupMenuTheme: PopupMenuThemeData(color: orange),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: orange,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: black,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: black, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: black),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: black),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: black),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: white,
      //focusColor: _lightBorderActiveColor,
    ),
  );
}
