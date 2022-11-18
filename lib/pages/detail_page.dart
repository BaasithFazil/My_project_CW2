import 'package:flutter/material.dart';
import 'package:news_app/components/constants/style.dart';
import 'package:news_app/model/article_model.dart';


class ArticleBusiness extends StatelessWidget {

  
  const ArticleBusiness({Key? key, required this.article}) : super(key: key);
    final Article article;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 230.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.urlToImage),
                  fit: BoxFit.cover,
                ),
              ),
              child:Container(
                padding: const EdgeInsets.only(left: 25.0, top: 25.0,),
                alignment: Alignment.topLeft,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepPurple,
                ),
                child: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25,))),
            ),  
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 10.0,
                        spreadRadius: 7.0,
                      ),
                    ],
                  ),
                  padding: MyPadding.primarypadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Headline", style:MyTextStyle.articletitle,),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(article.title, style: MyTextStyle.articletitle1),
                    ],
                  ),
                ),
              ),
            
      
            Container(
              // ignore: unnecessary_null_comparison
              child: article.description == null? 
                Text(article.description): const Padding(
                  padding: MyPadding.custompadding,
                  child: Text("No Description Found", style: MyTextStyle.articledescription),
                )
            ),
      
            Container(
              padding: MyPadding.primarypadding,
              child: Text(article.publishedAt.replaceAll('T', ' ').replaceAll('Z', ' '), style: MyTextStyle.articlepublished),
            ),  
      
            Container(
              padding: MyPadding.primarypadding,
              child: Text(article.content, style: MyTextStyle.content),
            ),
      

          ],
        ),
      ),
    );

  }
}

