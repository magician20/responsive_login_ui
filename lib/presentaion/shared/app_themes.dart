// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

///Todo: update the code for theme

const List<Color> appThemeList=[
  Color.fromRGBO(76, 155, 186, 1),//BlueLight
  Colors.blue,    //BlueDark
  Colors.teal,//TealLight
];

enum AppTheme {
  // GreenLight,
  // GreenDark,
  BlueLight,
  BlueDark,
  TealLight,
}

final appThemeData = {
  // AppTheme.GreenLight: ThemeData(
  //   brightness: Brightness.light,
  //   primaryColor: Colors.green,
  // ),
  // AppTheme.GreenDark: ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.green[700],
  // ),

  AppTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,

    primaryColor:Color.fromRGBO(76, 155, 186, 1), //const Color(0x4C9BBA),//error with HEX color cause of  can't give opacity to primaryColor
    primaryColorLight:Color.fromRGBO(148, 195, 214, 1), //const Color(0x94C3D6),
    primaryColorDark: Color.fromRGBO(53, 108, 130, 1),//const Color(0x356C82),

    accentColor: Color.fromRGBO(76, 155, 186, 1),//const Color(0x4C9BBA),
   
    secondaryHeaderColor:Color.fromRGBO(157, 200, 217, 1),// const Color(0x9DC8D9),
    toggleableActiveColor: Color.fromRGBO(255, 79, 88, 1),//const Color(0xFF4F58),
    
    canvasColor:  Color.fromRGBO(76, 155, 186, 1),//const Color(0xF6F9FA),
    dividerColor:  Color.fromRGBO(243, 243, 244, 0.95),//const Color(0xE0E0E0),
    disabledColor:  Color.fromRGBO(158, 158, 158, 1),//const Color(0x9E9E9E),

    appBarTheme: AppBarTheme(
      color:Color.fromRGBO(76, 155, 186, 1),// const Color(0x4C9BBA),
    ),
    bottomAppBarColor: Color.fromRGBO(246, 249, 250, 0.98),//const Color(0xF6F9FA),

    dialogBackgroundColor: Color.fromRGBO(253, 254, 254, 1),//const Color(0xFDFEFE),
    errorColor:Color.fromRGBO(176, 0, 32, 1),// const Color(0xB00020),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Color.fromRGBO(76, 155, 186, 1),//const Color(0x4C9BBA),
      selectionColor:Color.fromRGBO(201, 225, 234, 0.85),// const Color(0xC9E1EA),
      selectionHandleColor:Color.fromRGBO(53, 108, 130, 0.35),// const Color(0x356C82),
    ),

    indicatorColor: Color.fromRGBO(76, 155, 186, 1),//const Color(0x4C9BBA),
    
    cardTheme:CardTheme(color:Color.fromRGBO(253, 254, 254, 1), ) ,
    hoverColor:  Color.fromRGBO(236, 239, 240, 1),
    focusColor: Color.fromRGBO(249, 251, 253, 1),

    buttonColor: Color.fromRGBO(76, 155, 186, 1), 
    buttonTheme: ButtonThemeData(
      buttonColor: Color.fromRGBO(76, 155, 186, 1),//const Color(0x4C9BBA) ,
      disabledColor:Colors.white ,
    ),
 

    // primaryTextTheme: TextTheme(),
    // iconTheme: IconThemeData(
    //   color: const Color(0x4C9BBA),
    // ),
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: Colors.black,
    //     fontSize: 20.0,
    //   ),
    //   bodyText2: TextStyle(
    //     color: Colors.black,
    //     fontSize: 18.0,
    //   ),
    // ),

    // //this Class is n't wotking at all
    // colorScheme: ColorScheme.light(
    //   primary: const Color(0x4C9BBA),
    //   onPrimary: Colors.white,
    //   primaryVariant: const Color(0x078282),
    //   secondary: const Color(0xFF4F58),
    //   secondaryVariant: const Color(0xBF4A50),
    //   onSecondary: Colors.white,
    //   error: const Color(0xB00020),
    //   onError: Colors.white,
    //   background: const Color(0xF6F9FA),
    //   onBackground: Colors.black,
    //   surface: const Color(0xFDFDFD),
    //   onSurface: Colors.black,
    // ),
  ),

  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),

  AppTheme.TealLight: ThemeData(
    //scaffoldBackgroundColor: Colors.teal,
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: CardTheme(
      color: Colors.teal,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      bodyText2: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  ),
};

// ThemeData(
//     // Define the default brightness and colors.
//     brightness: Brightness.dark,
//     primaryColor: Colors.lightBlue[800],
//     accentColor: Colors.cyan[600],

//     // Define the default font family.
//     fontFamily: 'Georgia',

//     // Define the default TextTheme. Use this to specify the default
//     // text styling for headlines, titles, bodies of text, and more.
//     textTheme: TextTheme(
//       headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//       headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//       bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//     ),

//  new ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: CompanyColors.blue,
//   primaryColor: CompanyColors.blue[500],
//   primaryColorBrightness: Brightness.light,
//   accentColor: CompanyColors.green[500],
//   accentColorBrightness: Brightness.light
// );

