

import 'package:flutter/material.dart';
import 'package:news_app/components/constants/lists.dart';
import 'package:news_app/components/constants/style.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/pages/detail_page.dart';

// alert widgets
showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = const Padding(padding: EdgeInsets.only(right: 20.0));
  ElevatedButton(onPressed: (){
    Navigator.pop(context);
  }, child: const Text("Ok")); 
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: const Text("Help Me"),  
    content: const Text("This app is based on API integration. So viewing the news are from respective owners of the API. you can search and find global news from here. Thank You."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  


//containers


Container Buildtitle() => Container(
                child: RichText(
                  text: const TextSpan(
                    text: 'News',
                     style: TextStyle(fontSize: 30.0,color: Colors.black),
                      children: <TextSpan>[
                      TextSpan(text: 'App', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                      ],
                    ),
                  ),
              );


  SizedBox drawerBox() {
    return SizedBox(
                height: 330.0,
                width: 100.0,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => screens[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                             color: Colors.deepPurpleAccent,
                             borderRadius: BorderRadius.circular(15.0),
                          ),
                          height: 50.0,
                          width: 100.0,
                         
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(tabs[index], textAlign: TextAlign.center,style: MyTextStyle.content,),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              );
  }


  class defaultSizedBox extends StatelessWidget {
  const defaultSizedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10.0
    );
  }
}

  SizedBox drawerheadertext() {
    return const SizedBox(
                  child: Text("Available Categories", style: MyTextStyle.articletitle,),
                );
  }



    DrawerHeader drawerHeader() {
    return DrawerHeader(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/image3.jpg"),
                  fit: BoxFit.cover, 
                ),
              )
              ),
              );
  }


  ElevatedButton viewButton(BuildContext context, Article article) {
  return ElevatedButton(onPressed: (){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ArticleBusiness(article: article)));
          }, 
          style: ElevatedButton.styleFrom(
            foregroundColor: Mycolors.primarywhite, backgroundColor: Mycolors.primarypurple,
            shadowColor: Mycolors.primarygrey,
            shape: RoundedRectangleBorder(
              borderRadius: MyBorderRadius.primaryborderradius,
            )
          ),
          
          child: const Text("Click to Read More"));
}



Padding articleTitle(Article article) {
  return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Text(article.title, style: MyTextStyle.articletitle1),
        );
}


Container articleSource(Article article) {
  return Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(article.source.name, style: MyTextStyle.articlesourcename),
        );
}


Padding articleImage(Article article) {
  return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              
              image: DecorationImage(
                image: NetworkImage(article.urlToImage),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        );
}

Container cardContainer(Article article, BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(12.0),
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 7.0,
          spreadRadius: 7.0,
          offset: Offset(0, 2),
        ),  
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        articleImage(article),
          const defaultSizedBox(),
        articleSource(article),
        const defaultSizedBox(),

        articleTitle(article),
        const defaultSizedBox(),
        Center(
          child: viewButton(context, article)),
        
      ],
    ),
  );
}