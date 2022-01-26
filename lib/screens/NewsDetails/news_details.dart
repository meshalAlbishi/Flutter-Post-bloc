import 'package:elm_interview_task/screens/NewsDetails/Widget/image_container.dart';
import 'package:elm_interview_task/screens/NewsDetails/Widget/title_container.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatefulWidget {
  final article;

  const NewsDetails({Key? key, this.article}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white.withOpacity(0.8),
        child: Column(
          children: [
            TitleContainer(title: widget.article.title),
            ImageContainer(imgUrl: widget.article.urlToImage),
          ],
        ),
      ),
    );
  }
}
