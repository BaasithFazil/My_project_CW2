import 'package:flutter/material.dart';
import 'package:news_app/components/tiles/healthListTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {




  void updateList (String value){

  }

  ApiServiceHealth client2 = ApiServiceHealth();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  FutureBuilder(
                future: client2.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
      
                  if(snapshot.hasData) {
                    List<Article>? articlesHealth = snapshot.data;
                    return ListView.builder(
                      itemCount: articlesHealth?.length,
                      itemBuilder: (context, index) => healthListTile(
                        articlesHealth![index], context));
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

