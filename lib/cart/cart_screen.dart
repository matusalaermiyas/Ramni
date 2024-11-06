import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ramniui/cart/cart_card.dart';
import 'package:ramniui/checkout/checkout_screen.dart';
import 'package:ramniui/common/widgets/appbar_leading.dart';
import 'package:ramniui/styles/colors.dart';
import 'package:ramniui/success/success_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarLeading(),
        title: const Text(
          "Your Cart",
          style: TextStyle(color: appbarTextColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 26),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 43),
            child: Column(
              children: [
                const CartCard(
                  title: 'Ramni Chair',
                  price: "1700",
                  quantity: 1,
                ),
                const SizedBox(
                  height: 18,
                ),
                const CartCard(
                  title: 'Ramni Chair',
                  price: "1700",
                  quantity: 1,
                ),
                const SizedBox(
                  height: 18,
                ),
                const CartCard(
                  title: 'Ramni Chair',
                  price: "1700",
                  quantity: 1,
                ),
                const SizedBox(
                  height: 18,
                ),
                const CartCard(
                  title: 'Ramni Chair',
                  price: "1700",
                  quantity: 1,
                ),
                const SizedBox(
                  height: 61,
                ),
                const Text(
                  "TOTAL AMOUNT",
                  style: TextStyle(fontSize: 17, color: appbarTextColor),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "\$1700.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 51,
                ),
                GestureDetector(
                  onTap: () => Get.to(CheckoutScreen()),
                  child: Container(
                    width: 181,
                    height: 58,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "CHECKOUT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            SvgPicture.asset('assets/svgs/arrow_right.svg')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
