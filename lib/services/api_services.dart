
import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_app/model/article_model.dart';

class ApiServiceBusiness {

  final category = "business";
  final apiKey = "df892d97b60e454db3f5ba14f4a4b12d";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=gb&category=$category&apiKey=$apiKey");

  Future<List<Article>> getArticle() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }



}

class ApiServiceHealth {

    final category = "health";
    final apiKey = "df892d97b60e454db3f5ba14f4a4b12d";
  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=gb&category=$category&apiKey=$apiKey");

  Future<List<Article>> getArticle() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class ApiServiceScience {

    final category = "science";
    final apiKey = "df892d97b60e454db3f5ba14f4a4b12d";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=gb&category=$category&apiKey=$apiKey");

  Future<List<Article>> getArticle() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class ApiServiceSports {
    final category = "sports";
    final apiKey = "df892d97b60e454db3f5ba14f4a4b12d";

 late  dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=gb&category=$category&apiKey=$apiKey");

  Future<List<Article>> getArticle() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic  itemC) => Article.fromJson(itemC)).toList();
      
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class ApiServiceTec {
  final category = "technology";
  final apiKey = "df892d97b60e454db3f5ba14f4a4b12d";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=gb&category=$category&apiKey=$apiKey");

  Future<List<Article>> getArticle() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}









