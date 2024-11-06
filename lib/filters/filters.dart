import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ramniui/filters/filter_checkbox.dart';
import 'package:ramniui/styles/colors.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  List<Widget> _renderCategories() {
    final List<String> categoriesList = [
      'Beds',
      'Cabinets',
      'Chairs and Seating',
      'Chests',
      'Clocks'
    ];

    List<Widget> categoriesWidget = [];

    for (var i = 0; i < categoriesList.length; i++) {
      if (i != (categoriesList.length - 1)) {
        categoriesWidget.add(FilterCheckbox(
          label: categoriesList[i],
          checked: i == 0 ? true : false,
        ));
        categoriesWidget.add(const SizedBox(
          height: 26,
        ));
      }
    }

    return categoriesWidget;
  }

  List<Widget> _renderBrands() {
    final List<String> brandsList = [
      'Roche Bobois',
      'Edra',
      'Poliform',
      'Christopher Guy',
      'Kartell'
    ];

    List<Widget> categoriesWidget = [];

    for (var i = 0; i < brandsList.length; i++) {
      if (i != (brandsList.length - 1)) {
        categoriesWidget.add(FilterCheckbox(
          label: brandsList[i],
          checked: i == 0 ? true : false,
        ));
        categoriesWidget.add(const SizedBox(
          height: 26,
        ));
      }
    }

    return categoriesWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () => Get.back(), child: const Icon(Icons.close)),
                  const SizedBox(
                    width: 13,
                  ),
                  const Text(
                    "Filters",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: softBackgroundColor,
                    borderRadius: BorderRadius.circular(9)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 26.0, right: 26, top: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 33,
                          ),
                          SvgPicture.asset('assets/svgs/line.svg')
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ..._renderCategories(),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Brand",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 33,
                          ),
                          SvgPicture.asset('assets/svgs/line.svg')
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ..._renderBrands(),
                      const SizedBox(
                        height: 71,
                      ),
                      Container(
                        width: 249,
                        height: 58,
                        margin: const EdgeInsets.only(left: 40),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(75)),
                        child: const Center(
                          child: Text(
                            "APPLY FILTER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
