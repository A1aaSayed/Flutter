import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_tile.dart';

class NewsListTileBuilder extends StatefulWidget {
  const NewsListTileBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListTileBuilder> createState() => _NewsListTileBuilderState();
}

class _NewsListTileBuilderState extends State<NewsListTileBuilder> {

  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListTile(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('There is an error, try again later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
