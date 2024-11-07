import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/login/login_screen.dart';
import 'package:ramniui/register/register_screen.dart';
import 'package:ramniui/styles/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 201,
              child: Column(
                children: [
                  SizedBox(
                      width: 134,
                      height: 134,
                      child: Image.asset("assets/images/logo.png")),
                  Container(
                    width: 130,
                    height: 46,
                    margin: const EdgeInsets.only(top: 21),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: const Text(
                        "RAMNI",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 131),
              width: 249,
              height: 98,
              child: Column(
                children: [
                  SizedBox(
                      width: 249,
                      height: 58,
                      child: ElevatedButton(
                          onPressed: () => Get.to(const RegisterScreen()),
                          child: const Text(
                            "GET STARTED",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))),
                  Container(
                    margin: const EdgeInsets.only(top: 18),
                    child: GestureDetector(
                      onTap: () => Get.to(const LoginScreen()),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
