import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  // =========================================================
  // DISPLAY / HERO (landing, large numbers, charts)
  // =========================================================

  static TextStyle get displayLarge => GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.15,
  );

  static TextStyle get displayMedium => GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.15,
  );

  static TextStyle get displaySmall => GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // =========================================================
  // HEADINGS (screens, cards, sections)
  // =========================================================

  static TextStyle get h1 => GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static TextStyle get h2 => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  static TextStyle get h3 => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  static TextStyle get h4 => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.35,
  );

  // =========================================================
  // BODY TEXT (content, paragraphs)
  // =========================================================

  static TextStyle get bodyLarge => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle get body => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle get bodySmall => GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.45,
  );

  // =========================================================
  // LABELS / FORM / META
  // =========================================================

  static TextStyle get labelLarge => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  );

  static TextStyle get label => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
  );

  static TextStyle get caption => GoogleFonts.poppins(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
  );

  static TextStyle get overline => GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.8,
  );

  // =========================================================
  // BUTTONS / ACTIONS
  // =========================================================

  static TextStyle get buttonLarge => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.6,
  );

  static TextStyle get button => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.6,
  );

  static TextStyle get buttonSmall => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  // =========================================================
  // NUMBERS / METRICS (calories, water, charts)
  // =========================================================

  static TextStyle get metricLarge => GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.1,
  );

  static TextStyle get metricMedium => GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static TextStyle get metricSmall => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // =========================================================
  // STATUS / FEEDBACK
  // =========================================================

  static TextStyle get success => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.green,
  );

  static TextStyle get warning => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.orange,
  );

  static TextStyle get error => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.red,
  );

  static TextStyle get disabled => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black38,
  );

  // =========================================================
  // EMPTY / INFO STATES
  // =========================================================

  static TextStyle get emptyTitle => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get emptySubtitle => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
  );
}
