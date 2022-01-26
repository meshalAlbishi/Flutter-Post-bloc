import 'package:elm_interview_task/screens/NewsDetails/news_details.dart';
import 'package:elm_interview_task/screens/NewsList/Widget/card_decoration.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final article;

  const PostCard({Key? key, this.article}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: CardStyles.cardDecoration(),
        child: Text(
          '${widget.article.title}',
          style: CardStyles.titleStyle(),
        ),
      ),
      onTap: () {
        _navigateDetailsPage();
      },
    );
  }

  void _navigateDetailsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewsDetails(article: widget.article),
      ),
    );
  }

}
