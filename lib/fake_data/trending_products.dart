class TrendingProductsModel {
  String imageFileName;
  String productName;
  String price;

  TrendingProductsModel(
      {required this.imageFileName,
      required this.productName,
      required this.price});
}

List<TrendingProductsModel> trendingProducts = [
  TrendingProductsModel(
      imageFileName: "chair.jpg", productName: "Panka Chair", price: "1000"),
  TrendingProductsModel(
      imageFileName: "chair.jpg", productName: "Ramni Chair", price: "1700"),
  TrendingProductsModel(
      imageFileName: "chair.jpg", productName: "Ramni Chair", price: "1700")
];
