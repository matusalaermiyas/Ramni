import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ramniui/styles/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svgs/success.svg'),
            const SizedBox(
              height: 42,
            ),
            const Text(
              "Your Order",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text("Has Been Accepted",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "Your items has been placed and is on",
              style: TextStyle(color: appbarTextColor, fontSize: 17),
            ),
            const Text(
              "it\'s way to being processed",
              style: TextStyle(color: appbarTextColor, fontSize: 17),
            ),
            const SizedBox(
              height: 91,
            ),
            Container(
              width: 249,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: primaryColor),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "TRACK ORDER",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            GestureDetector(
              onTap: () => Get.back(),
              child: const Text(
                "BACK TO HOME",
                style: TextStyle(
                    color: textColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
