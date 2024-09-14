import 'package:flutter/cupertino.dart';
import 'package:ramniui/fake_data/trending_products.dart';
import 'package:ramniui/home/home_product_card.dart';

List<Widget> renderTrendingProducts() {
  return trendingProducts
      .map((TrendingProductsModel trendingProduct) =>
          HomeProductCard(product: trendingProduct))
      .toList();
}
