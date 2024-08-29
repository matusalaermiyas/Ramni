import 'package:flutter/material.dart';
import 'package:ramniui/style/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 201,
              child: Column(
                children: [
                  Container(
                      width: 134,
                      height: 134,
                      child: Image.asset("assets/images/logo.png")),
                  Container(
                    width: 130,
                    height: 46,
                    child: Text(
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
                ],
              ),
            ),
            Container(
              width: 249,
              height: 98,
              child: Column(
                children: [
                  SizedBox(
                      width: 249,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
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
