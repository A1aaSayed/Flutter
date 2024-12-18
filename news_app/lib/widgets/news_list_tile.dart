import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'news_tile.dart';

class NewsListTile extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListTile({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
              (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: NewsTile(news: articles[index]),
            );
          }),
    );
  }
}
