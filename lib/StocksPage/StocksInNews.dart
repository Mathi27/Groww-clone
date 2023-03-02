import 'package:flutter/material.dart';

import '../ReusableWidgets/StockDisplayWidget.dart';

class StocksInNews extends StatefulWidget {
  const StocksInNews({super.key});

  @override
  State<StocksInNews> createState() => _StocksInNewsState();
}

class _StocksInNewsState extends State<StocksInNews> {
  List<StockDisplayCard> stocksInNews = [
    StockDisplayCard(
      BrandLogo: "assets/zomato.png",
      BrandName: "Zomato",
      Cost: "₹ 54.95",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDisplayCard(
      BrandLogo: "assets/Ambuja_logo.png",
      BrandName: "Ambuja Cements",
      Cost: "₹ 336.90",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDisplayCard(
      BrandLogo: "assets/Yes_Bank_logo.png",
      BrandName: "Yes Bank",
      Cost: "₹ 16.40",
      PriceAction: "+2.00 (0.61%)",
    ),
    StockDisplayCard(
      BrandLogo: "assets/tatasteel.jpg",
      BrandName: "Tata Steel",
      Cost: "₹ 112.05",
      PriceAction: "+0.90 (0.81%)",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: stocksInNews.length,
        itemBuilder: (context, index) {
          return stocksInNews[index];
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}