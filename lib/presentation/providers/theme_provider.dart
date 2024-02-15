import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Simple booleano
final isDarkModeProvider = StateProvider((ref) => false);

// Simple int
final selectedColorProvider = StateProvider((ref) => 0);
