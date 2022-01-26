import 'dart:convert';

import 'package:elm_interview_task/constants/const.dart';
import 'package:elm_interview_task/models/news.dart';
import 'package:http/http.dart' as http;

class NewsAPI{

  Future<News> getNews() async {
    var client = http.Client();
    var news;

   try{
     var response = await client.get(Uri.parse(apiUrl));

     if(response.statusCode == 200){

       var jsonString = response.body;
       var jsonMap = json.decode(jsonString);

       news = News.fromJson(jsonMap);
     }

     return news;
   }on Exception{
     return news;
   }

  }
}