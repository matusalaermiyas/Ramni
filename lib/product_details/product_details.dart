import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ramniui/common/widgets/appbar_leading.dart';
import 'package:ramniui/styles/colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarLeading(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/svgs/favorite.svg"),
          )
        ],
      ),
      body: Column(
        children: [
          Align(
            child: Container(
              margin: const EdgeInsets.only(left: 74),
              width: 305,
              height: 168,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "assets/images/product_detail.png",
                  width: 305,
                  height: 168,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 41),
            width: 36,
            height: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(11)),
                ),
                Container(
                  width: 8,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(11)),
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(11)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 25, bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 33),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 17),
                          child: const Text(
                            "Ramni Chair",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 107),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svgs/star.svg"),
                              SizedBox(
                                width: 6.5,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Text(
                          "\$1700",
                          style: TextStyle(
                              fontSize: 21,
                              color: textColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ContainedTabBarView(
                        tabBarProperties: const TabBarProperties(
                            unselectedLabelColor: Colors.grey,
                            labelColor: textColor,
                            indicatorColor: primaryColor,
                            labelPadding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0)),
                        tabs: const [
                          Text(
                            "Description",
                          ),
                          Text(
                            "Reviews",
                          ),
                          Text(
                            "Offers",
                          ),
                          Text(
                            "Policy",
                          ),
                        ],
                        views: [
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              "Minimalist Styling Is Not About Creating A Cold, Hard, Empty White Box Of A Home. It Is About Using Simple And Natural Forms, And Taking Away Layers Without Losing The Aesthetic Appeal Of The Space. The Focus Is On Shape, With A Furniture And Accessories.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: const Text("Two")),
                          Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: const Text("Three")),
                          Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: const Text("Four"))
                        ]),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: 120,
                        height: 58,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(75)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/svgs/minus.svg"),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            SvgPicture.asset("assets/svgs/plus.svg")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 29,
                      ),
                      Container(
                        width: 194,
                        height: 58,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(75)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            SvgPicture.asset("assets/svgs/add_to_cart.svg")
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
