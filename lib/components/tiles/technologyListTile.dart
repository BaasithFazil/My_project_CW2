import 'package:flutter/material.dart';
import 'package:news_app/components/constants/widgets.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/pages/detail_page.dart';



Widget technologyListTile (Article article, BuildContext context) { 
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ArticleBusiness(article: article)));
    },
    child: cardContainer(article, context),
  );
}