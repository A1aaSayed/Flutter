import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.news});

  final ArticleModel news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            news.image?? 'https://th.bing.com/th/id/R.791a4269f874240c8fc9ac1c7991da90?rik=kNairw71iDnFNA&riu=http%3a%2f%2fwww.ihuarui.cn%2fd%2ffile%2fcontent%2f2020%2f07%2f5f06da985995e.png&ehk=4YdArEQgSt9p7KC%2f5oSrKMxKRpSKO3vz13S%2b%2bSuA7tA%3d&risl=&pid=ImgRaw&r=0',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 12,),
        Text(
          news.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 8,),
        Text(
          news.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
          ),
        ),
      ],
    );
  }
}
