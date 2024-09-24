import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/styles/colors.dart';

import "package:flutter_svg/flutter_svg.dart";
import 'package:ramniui/welcome/welcome_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                      margin: const EdgeInsets.only(top: 36),
                      child: Text(
                        "OTP has been sent to 9979409958".toUpperCase(),
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  Container(
                    width: 326,
                    height: 76,
                    margin: const EdgeInsets.only(top: 22),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 233, 248)),
                              color: Color.fromARGB(255, 243, 244, 247),
                              borderRadius: BorderRadius.circular(4)),
                          width: 66,
                          height: 72,
                          child: const Center(
                              child: Text(
                            "8",
                            style: TextStyle(fontSize: 27),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 66,
                          height: 72,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 233, 248)),
                              color: Color.fromARGB(255, 243, 244, 247),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Center(
                              child: Text(
                            "9",
                            style: TextStyle(fontSize: 27),
                          )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 66,
                          height: 72,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 233, 248)),
                              color: Color.fromARGB(255, 243, 244, 247),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Center(
                              child: Text(
                            "7",
                            style: TextStyle(fontSize: 27),
                          )),
                        ),
                        Container(
                          width: 66,
                          height: 72,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 233, 248)),
                              color: Color.fromARGB(255, 243, 244, 247),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Center(
                              child: Text(
                            "7",
                            style: TextStyle(fontSize: 27),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 68, left: 72, right: 72),
                    child: SizedBox(
                        width: 248,
                        height: 58,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(backgroundColor)),
                            onPressed: () => Get.to(WelcomeScreen()),
                            child: const Text(
                              "VERIFY OTP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                  Container(
                    width: 165,
                    height: 25,
                    margin: const EdgeInsets.only(
                        top: 34, left: 100, right: 100, bottom: 96),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 42,
                            height: 24,
                            child: Text(
                              "00:30",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 98, 110, 137)),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 19),
                            width: 100,
                            height: 24,
                            child: Text(
                              "Resend OTP",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 98, 110, 137)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.size.width,
              height: Get.size.height * 0.3,
              color: backgroundColor,
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
