import 'package:flutter/material.dart';
import 'package:news_app/components/tiles/scienceListTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {




  void updateList (String value){

  }

  ApiServiceScience client3 = ApiServiceScience();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  FutureBuilder(
                future: client3.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
      
                  if(snapshot.hasData) {
                    List<Article>? articlesScience = snapshot.data;
                    return ListView.builder(
                      itemCount: articlesScience?.length,
                      itemBuilder: (context, index) => scienceListTile(
                        articlesScience![index], context));
                  }
                  return const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.purple,
                      strokeWidth: 8.0,                      
                    ),
                  );
                },
              ),
        
    );
  }
}




