import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ramniui/home/home_utils.dart';
import 'package:ramniui/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: Get.size.height * 0.93, left: 35, right: 35),
              height: Get.size.height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svgs/packages.svg"),
                  SvgPicture.asset("assets/svgs/home.svg"),
                  SvgPicture.asset("assets/svgs/user.svg"),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: Get.size.height * 0.93,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(
                                top: 23, left: 31, bottom: 22),
                            child: SvgPicture.asset("assets/svgs/menu.svg")),
                        Row(
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 19),
                                child: SvgPicture.asset(
                                    "assets/svgs/notifications.svg")),
                            const SizedBox(
                              width: 23,
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 19, right: 21, bottom: 20),
                                child:
                                    SvgPicture.asset("assets/svgs/cart.svg")),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 25, right: 25, left: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F8),
                                  borderRadius: BorderRadius.circular(4)),
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          left: 14, top: 13, bottom: 13),
                                      child: SvgPicture.asset(
                                          "assets/svgs/search.svg")),
                                  const SizedBox(
                                    width: 16.6,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: const InputDecoration(
                                          hintText: "Search",
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.only(bottom: 10),
                                          hintStyle: TextStyle(
                                            fontSize: 15,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFF7F7F8),
                                borderRadius: BorderRadius.circular(4)),
                            margin: const EdgeInsets.only(left: 11),
                            width: 40,
                            height: 40,
                            child: Center(
                              child: SvgPicture.asset("assets/svgs/filter.svg"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 26),
                      child: Row(
                        children: [
                          const Text(
                            "TRENDING PRODUCTS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          Image.asset(
                            "assets/images/line.png",
                            width: 103,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Color(0xFFFF5B55)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13, left: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: renderTrendingProducts(),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 26),
                      child: Row(
                        children: [
                          const Text(
                            "POPULAR CATEGORIES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          Image.asset(
                            "assets/images/line.png",
                            width: 103,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Color(0xFFFF5B55)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, top: 22),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 6),
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                "All",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 6),
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text("Electronics and Appliances"),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 6),
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text("SHIRT"),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 6),
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text("Shoes"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 13, left: 25, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: renderTrendingProducts(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
