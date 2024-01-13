// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';
import 'package:dio/dio.dart';

void main() {
  getGeneralNews();
  runApp(const NewsApp());
}
final dio = Dio();

void getGeneralNews() async {
  final response = await dio.get(
    'https://newsapi.org/v2/everything?q=bitcoin&apiKey=31eb1788051f4893ae7fa067e55c1763');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "playpen"),
      home: const HomeView(),
    );
  }
}