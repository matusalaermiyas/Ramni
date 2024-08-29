import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/landing/landing_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const LandingScreen(),
      theme: ThemeData(fontFamily: "SFPro"),
    ),
  );
}
