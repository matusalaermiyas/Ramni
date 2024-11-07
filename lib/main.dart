import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/landing/landing_screen.dart';
import 'package:ramniui/styles/theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
      theme: theme,
    ),
  );
}
