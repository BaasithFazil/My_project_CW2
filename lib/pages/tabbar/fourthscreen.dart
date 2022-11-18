import 'package:flutter/material.dart';
import 'package:news_app/components/tiles/sportsListTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {

  void updateList (String value){

  }

  ApiServiceSports client4 = ApiServiceSports();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  FutureBuilder(
                future: client4.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
      
                  if(snapshot.hasData) {
                    List<Article>? articlesSports = snapshot.data;
                    return ListView.builder(
                      itemCount: articlesSports?.length,
                      itemBuilder: (context, index) => sportsListTile(
                        articlesSports![index], context));
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

