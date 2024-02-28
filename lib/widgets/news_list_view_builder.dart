import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';


class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: NewsService(Dio()).getNews(),
      builder: (context, snapshot){
        return NewListView(
            articles: snapshot.data ,
          );
      }
      );
  }
}
