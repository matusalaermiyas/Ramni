import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppbarLeading extends StatelessWidget {
  const AppbarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: SvgPicture.asset(
        'assets/svgs/arrow_back.svg',
        width: 24,
        height: 14,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
