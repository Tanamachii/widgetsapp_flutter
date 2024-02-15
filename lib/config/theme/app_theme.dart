import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.purple,
  Colors.black,
  Colors.orange,
  Colors.pink,
  Colors.lightBlue,
  Colors.teal,
  Colors.pinkAccent,
  Colors.greenAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.isDarkMode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Este color no existe'),
        assert(selectedColor < colorList.length,
            'El color seleccionado tiene que ser menor al tamaño del arreglo de colores');

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode,
  }) =>
      AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
