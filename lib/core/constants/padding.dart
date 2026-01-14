import 'package:flutter/material.dart';

class AppPadding {
  AppPadding._();

  // =================================================
  // ALL SIDES
  // =================================================

  static const EdgeInsets p4 = EdgeInsets.all(4);
  static const EdgeInsets p8 = EdgeInsets.all(8);
  static const EdgeInsets p12 = EdgeInsets.all(12);
  static const EdgeInsets p16 = EdgeInsets.all(16);
  static const EdgeInsets p20 = EdgeInsets.all(20);
  static const EdgeInsets p24 = EdgeInsets.all(24);

  // =================================================
  // HORIZONTAL
  // =================================================

  static const EdgeInsets h8 = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets h12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets h16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets h20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets h24 = EdgeInsets.symmetric(horizontal: 24);

  // =================================================
  // VERTICAL
  // =================================================

  static const EdgeInsets v8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets v12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets v20 = EdgeInsets.symmetric(vertical: 20);
  static const EdgeInsets v24 = EdgeInsets.symmetric(vertical: 24);

  // =================================================
  // COMMON COMBINATIONS
  // =================================================

  static const EdgeInsets screen =
  EdgeInsets.symmetric(horizontal: 16, vertical: 16);

  static const EdgeInsets card =
  EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  static const EdgeInsets listItem =
  EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  static const EdgeInsets formField =
  EdgeInsets.symmetric(horizontal: 12, vertical: 10);

  static const EdgeInsets bottomSheet =
  EdgeInsets.fromLTRB(16, 16, 16, 24);
}
