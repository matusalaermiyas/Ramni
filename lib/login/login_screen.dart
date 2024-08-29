import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ramniui/style/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.size.width,
            height: Get.size.height,
            color: backgroundColor,
          ),
          Container(
            margin: EdgeInsets.only(top: Get.size.height * 0.4),
            width: Get.size.width,
            height: Get.size.height * 0.6,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [Text("Sign in")],
            ),
          ),
          Container(
            width: Get.size.width,
            height: Get.size.height * 0.4,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 117,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 80,
                        height: 80,
                      ),
                      const Text(
                        "RAMNI",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
