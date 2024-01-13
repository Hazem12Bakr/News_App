// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class NewsService
{
  final Dio dio;

  NewsService(this.dio);

  void getGeneralNews() async {
  final response = await dio.get(
    'https://newsapi.org/v2/everything?q=bitcoin&apiKey=31eb1788051f4893ae7fa067e55c1763');
  print(response);
}
}