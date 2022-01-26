import 'dart:async';

import 'package:elm_interview_task/services/news_api.dart';
import 'package:elm_interview_task/models/news.dart';

class NewsBloc{

  final _stateStreamController = StreamController<News>();
  StreamSink<News> get _newsSink => _stateStreamController.sink;
  Stream<News> get newsStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<bool>();
  StreamSink<bool> get eventSink => _eventStreamController.sink;
  Stream<bool> get _eventStream => _eventStreamController.stream;

  NewsBloc(){
      _eventStream.listen((event) async{
           try{
             var news = await NewsAPI().getNews();
             _newsSink.add(news);
           }on Exception{
             _newsSink.addError("couldn't load news");
           }
      });
  }
}