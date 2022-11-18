import 'package:flutter/material.dart';
import 'package:news_app/components/tiles/sportsListTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {

  void updateList (String value){

  }

  ApiServiceTec client5 = ApiServiceTec();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  FutureBuilder(
                future: client5.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
      
                  if(snapshot.hasData) {
                    List<Article>? articlesTechnology = snapshot.data;
                    return ListView.builder(
                      itemCount: articlesTechnology?.length,
                      itemBuilder: (context, index) => sportsListTile(
                        articlesTechnology![index], context));
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

