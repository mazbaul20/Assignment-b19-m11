import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color background = Color(0xFFF9F9F9); // Soft off-white/cream
  static const Color backgroundDark = Colors.blue;
  static const Color cardSurface = Colors.white;
  static const Color primaryAccent = Color(0xFF0D47A1); // Warm appetizing orange
  static const Color pastelPeach = Color(0xFFE5F0FF); // Soft pastel container
  static const Color textDark = Color(0xFF1E1E1E); // Dark charcoal text
  static const Color borderLight = Color(0xFFEEEEEE); // Subtle card border
  static const Color borderDark = Color(0xFFBDBDBD); // Subtle card border
  static const Color trailingBg = Color(0xFFF4F4F4); // Light grey circle
  static const Color trailingIcon = Color(0xFF757575); // Muted grey arrow
  //card shadow
  static final List<BoxShadow> cardShadow = [
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.05),
      blurRadius: 20,
      offset: const Offset(0, 8),
    ),
  ];
}