// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:news_app/models/article_Model.dart';

class NewsService {
  final Dio dio ;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
  var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=31eb1788051f4893ae7fa067e55c1763&category=general');
  
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> articles = jsonData['articles'];
  //we need to convert list of maps to list of objects to make it easy to deal with data
  //the next steps is doing that
  List<ArticleModel> articlesList = [];
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description'],
    );
    articlesList.add(articleModel);
  }
  
  return articlesList;
}  catch (e) {
  return [];
}
  }
}
