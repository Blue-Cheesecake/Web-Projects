import 'package:flutter/material.dart';

class Style {
  static Kolor color = Kolor();
  static FontSize fontSize = FontSize();
}

class Kolor {
  // Primary
  final marineBlue = const HSLColor.fromAHSL(1, 213, 0.96, 0.18).toColor();
  final purplishBlue = const HSLColor.fromAHSL(1, 243, 1.00, 0.62).toColor();
  final pastelBlue = const HSLColor.fromAHSL(1, 228, 1.00, 0.84).toColor();
  final lightBlue = const HSLColor.fromAHSL(1, 206, 0.94, 0.87).toColor();
  final strawberryRed = const HSLColor.fromAHSL(1, 354, 0.84, 0.57).toColor();

  // Neutral
  final coolGray = const HSLColor.fromAHSL(1, 231, 0.11, 0.63).toColor();
  final lightGray = const HSLColor.fromAHSL(1, 229, 0.24, 0.87).toColor();
  final magnolia = const HSLColor.fromAHSL(1, 217, 1.00, 0.97).toColor();
  final alabaster = const HSLColor.fromAHSL(1, 231, 1.00, 0.99).toColor();
  final white = const HSLColor.fromAHSL(1, 0, 0, 1.00).toColor();

  // wtf
  final buttonHover = const HSLColor.fromAHSL(1, 213, 0.71, 0.31).toColor();
}

class FontSize {
  final double stepTitle = 28.0;
  final double paragraph = 14.0;
  final double sidebarSpacing = 1.5;
  final double subtitleSpacing = 0.5;
  final double smallParagraph = 12.5;
}
