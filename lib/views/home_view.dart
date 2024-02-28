import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        // to make a custom scroll view
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          // instead of children it accepts widgets of type sliver
          slivers: [
            const SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}


