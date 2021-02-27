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
  static const Color dodgerBlue = Color.fromRGBO(29, 161, 242, 1);
  static const Color whiteLilac = Color.fromRGBO(248, 250, 252, 1);

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 20.0, color: black),
    bodyText1: TextStyle(fontSize: 16.0, color: black),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey),
    button: TextStyle(
        fontSize: 15.0, color: black, fontWeight: FontWeight.w600),
    headline6: TextStyle(fontSize: 16.0, color: black),
    subtitle1: TextStyle(fontSize: 16.0, color: black),
    caption: TextStyle(fontSize: 12.0, color: dodgerBlue),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // fontFamily: font1,
    scaffoldBackgroundColor: whiteLilac,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: dodgerBlue
    ),
    appBarTheme: AppBarTheme(
      color: dodgerBlue,
      iconTheme: IconThemeData(color: black),
      textTheme: _lightTextTheme,
    ),
    colorScheme: ColorScheme.light(
      primary: dodgerBlue,
      primaryVariant: whiteLilac,
      // secondary: _lightSecondaryColor,
    ),
    snackBarTheme: SnackBarThemeData(
        backgroundColor: black,
        actionTextColor: white),
    iconTheme: IconThemeData(
      color: black,
    ),
    popupMenuTheme: PopupMenuThemeData(color: dodgerBlue),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: dodgerBlue,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: black,
    inputDecorationTheme: InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),
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
