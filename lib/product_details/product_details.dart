import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 305,
            height: 168,
            color: Colors.red,
          ),
          Container(
            width: 36,
            height: 5,
            child: Row(
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
          Row(
            children: [Text("Ramni Chair"), Icon(Icons.star), Text("1700")],
          )
        ],
      ),
    );
  }
}
