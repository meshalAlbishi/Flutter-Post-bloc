import 'package:elm_interview_task/blocs/news_bloc.dart';
import 'package:elm_interview_task/models/news.dart';
import 'package:flutter/material.dart';

import 'Widget/post_card.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  final _news = NewsBloc();

  @override
  void initState() {
    _news.eventSink.add(true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: StreamBuilder<News>(
            initialData: null,
            stream: _news.newsStream,
            builder: (context, snapshot) {
              if(snapshot.hasError){
                return const Center(child: Text("Something Went Wrong :("));
              }
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.articles.length,
                    itemBuilder: (context, index) {
                      return PostCard(article: snapshot.data?.articles[index],);
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
    );
  }
}
