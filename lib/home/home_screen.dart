import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                            top: 23, left: 31, bottom: 22),
                        child: SvgPicture.asset("assets/svgs/menu.svg")),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 19),
                            child: SvgPicture.asset(
                                "assets/svgs/notifications.svg")),
                        const SizedBox(
                          width: 23,
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                top: 19, right: 21, bottom: 20),
                            child: SvgPicture.asset("assets/svgs/cart.svg")),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, right: 25, left: 25),
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
                                child:
                                    SvgPicture.asset("assets/svgs/search.svg")),
                            const SizedBox(
                              width: 16.6,
                            ),
                            Expanded(
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.top,
                                decoration: const InputDecoration(
                                    hintText: "Search",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
