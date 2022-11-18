import 'package:flutter/material.dart';
import 'package:news_app/components/tiles/businessListTile.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/api_services.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {




  void updateList (String value){

  }

  ApiServiceBusiness client1 = ApiServiceBusiness();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  FutureBuilder(
                future: client1.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
      
                  if(snapshot.hasData) {
                    List<Article>? articles = snapshot.data;
                    return Column(
                      children: [
                        
                        Expanded(
                          child: ListView.builder(
                            itemCount: articles?.length,
                            itemBuilder: (context, index) => customListTile(
                              articles![index], context)),
                        ),
                      ],
                    );
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

