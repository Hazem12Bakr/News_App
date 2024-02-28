// ignore_for_file: unused_local_variable, unnecessary_cast, unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_container.dart';

// ignore: must_be_immutable
class NewListView extends StatelessWidget {
  final List<ArticleModel> articles ;
   const NewListView({super.key,required this.articles});
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
