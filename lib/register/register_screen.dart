import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramniui/otp/otp_screen.dart';
import 'package:ramniui/styles/colors.dart';

import "package:flutter_svg/flutter_svg.dart";

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: Get.size.height * 0.2),
              width: Get.size.width,
              height: Get.size.height * 0.8,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 40, right: 40, top: 65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 24),
                              child: Image.asset("assets/images/line.png")),
                          Text(
                            "Sign up".toUpperCase(),
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
                      margin:
                          const EdgeInsets.only(top: 16, left: 25, right: 25),
                      padding: const EdgeInsets.only(top: 26, left: 21),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Enter Name",
                            style: TextStyle(fontSize: 18, color: Colors.black),
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
                      margin:
                          const EdgeInsets.only(top: 31, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.only(top: 26, left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Enter Email",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextFormField(
                            initialValue: "user@gmail.com",
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 343,
                      margin:
                          const EdgeInsets.only(top: 31, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.only(top: 26, left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Enter Mobile",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          TextFormField(
                            initialValue: "+251910203040",
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 343,
                      margin:
                          const EdgeInsets.only(top: 31, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.only(top: 26, left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Enter Password",
                            style: TextStyle(fontSize: 18, color: Colors.black),
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
                    Container(
                      width: 343,
                      margin:
                          const EdgeInsets.only(top: 31, left: 25, right: 25),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      padding: const EdgeInsets.only(top: 26, left: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Confirm Password",
                            style: TextStyle(fontSize: 18, color: Colors.black),
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
                    Container(
                      margin: const EdgeInsets.only(
                          top: 34, left: 72, right: 72, bottom: 37),
                      child: SizedBox(
                          width: 248,
                          height: 58,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      backgroundColor)),
                              onPressed: () => Get.to(const OtpScreen()),
                              child: const Text(
                                "NEXT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Get.size.width,
              height: Get.size.height * 0.2,
              color: backgroundColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 27),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Container(
                      width: 63,
                      height: 63,
                      margin: const EdgeInsets.only(left: 114),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: SvgPicture.asset(
                        "assets/svgs/logo.svg",
                        fit: BoxFit.scaleDown,
                        width: 31,
                        height: 40,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
