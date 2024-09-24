import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/styles/colors.dart';

import "package:flutter_svg/flutter_svg.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    width: 343,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4)),
                    margin: const EdgeInsets.only(top: 16, left: 25, right: 25),
                    padding: const EdgeInsets.only(top: 26, left: 21),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              hintText: "Pankaj_Patel",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 343,
                    margin: const EdgeInsets.only(top: 31, left: 25, right: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.only(top: 26, left: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextFormField(
                          initialValue: "12345",
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              suffixIcon: Icon(Icons.visibility_off),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          obscureText: true,
                        )
                      ],
                    ),
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
                                    MaterialStateProperty.all(backgroundColor)),
                            onPressed: () {},
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
