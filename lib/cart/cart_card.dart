import 'package:flutter/material.dart';
import 'package:ramniui/styles/colors.dart';

class CartCard extends StatelessWidget {
  final String title, price;
  final int quantity;

  const CartCard(
      {required this.title,
      required this.price,
      required this.quantity,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(10)),
          width: 131,
          height: 108,
          child: Image.asset(
            'assets/images/cup.png',
            width: 105,
            height: 73,
            alignment: Alignment.center,
          ),
        ),
        const SizedBox(
          width: 27,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 19),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(color: appbarTextColor, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                const Icon(
                  Icons.add_circle_outline,
                  color: appbarTextColor,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "$quantity",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.do_disturb_on_outlined,
                  color: appbarTextColor,
                  size: 25,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
