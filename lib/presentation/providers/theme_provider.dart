import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider<List<Color>>((ref) => colorList);

final selectedIndexColorProvider = StateProvider<int>((ref) => 0);