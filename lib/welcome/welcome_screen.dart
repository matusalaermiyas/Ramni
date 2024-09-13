import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/home/home_screen.dart';
import 'package:ramniui/style/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.size.width,
        height: Get.size.height,
        color: backgroundColor,
        child: Column(
          children: [
            Container(
              width: 212,
              height: 90,
              margin: const EdgeInsets.only(top: 129),
              child: Column(
                children: [
                  Text(
                    "Hello Pankkaj",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: Text(
                      "Welcome to the Ramni",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              width: 110,
              margin: const EdgeInsets.only(top: 98),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(55)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Image.asset(
                  "assets/images/profile.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 34,
              width: 170,
              margin: const EdgeInsets.only(top: 29),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Change Profile Picture",
                    style: TextStyle(
                        fontSize: 13, color: Color.fromARGB(255, 255, 57, 90)),
                  )),
            ),
            Container(
              width: 249,
              height: 58,
              margin: const EdgeInsets.only(top: 126),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Upload picture".toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 254, 58, 89)),
                  )),
            ),
            GestureDetector(
              onTap: () => Get.to(const HomeScreen()),
              child: Container(
                  margin: const EdgeInsets.only(top: 18),
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
