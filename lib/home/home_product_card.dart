import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ramniui/fake_data/trending_products.dart';

class HomeProductCard extends StatelessWidget {
  final TrendingProductsModel product;

  const HomeProductCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 237,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 156,
              height: 128,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(9)),
              child: Image.asset(
                "assets/images/${product.imageFileName}",
                width: 136,
                height: 103,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 17),
                child: Text(
                  product.productName,
                  style: const TextStyle(fontSize: 14),
                )),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                left: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 50,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "\$${product.price}",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8B98B4)),
                        ),
                      )),
                  Container(
                    width: 34,
                    height: 34,
                    margin: const EdgeInsets.only(right: 13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: const Color(0xFFF7F7F8),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/svgs/cart.svg",
                      color: Colors.red,
                      width: 13,
                      height: 12,
                    ),
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
