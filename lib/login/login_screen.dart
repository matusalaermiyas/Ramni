import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/common/widgets/input.dart';
import 'package:ramniui/home/home_screen.dart';
import 'package:ramniui/styles/colors.dart';

import "package:flutter_svg/flutter_svg.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: Get.size.height * 0.3),
              width: Get.size.width,
              height: Get.size.height * 0.7,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 24),
                            child: Image.asset("assets/images/line.png")),
                        Text(
                          "Sign in".toUpperCase(),
                          style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 24),
                            child: Image.asset("assets/images/line.png")),
                      ],
                    ),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(top: 16, left: 25, right: 25),
                      child: AppInput(
                          label: 'User Name',
                          hintText: 'Lenny Leonard',
                          controller: TextEditingController())),
                  Container(
                    margin: const EdgeInsets.only(top: 31, left: 25, right: 25),
                    child: AppInput(
                        label: 'Password',
                        hintText: '*****',
                        suffixIcon: Icon(Icons.lock),
                        controller: TextEditingController()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 34, left: 72, right: 72),
                    child: SizedBox(
                        width: 248,
                        height: 58,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor)),
                            onPressed: () => Get.to(const HomeScreen()),
                            child: const Text(
                              "SIGN IN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ))),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 127, right: 126, top: 19),
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 98, 110, 137)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.size.width,
              height: Get.size.height * 0.3,
              color: primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 117,
                    child: Column(
                      children: [
                        Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40)),
                            child: SvgPicture.asset(
                              "assets/svgs/logo.svg",
                              fit: BoxFit.scaleDown,
                              width: 31,
                              height: 40,
                            )),
                        const SizedBox(
                          height: 10,
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
      ),
    );
  }
}
