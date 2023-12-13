import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_container.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(),
          );
        },
      ),
    );
  }
}
