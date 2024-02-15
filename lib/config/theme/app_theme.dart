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

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Este color no existe'),
        assert(selectedColor < colorList.length - 1,
            'El color seleccionado tiene que ser menor al tamaño del arreglo de colores');

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
