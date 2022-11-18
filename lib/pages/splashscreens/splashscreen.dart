import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:news_app/components/constants/style.dart';
import 'package:news_app/components/constants/widgets.dart';
import 'package:news_app/mainscreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CarouselSlider(
        unlimitedMode: false,
        slideTransform: const CubeTransform(),
        slideIndicator: CircularSlideIndicator(
          padding: MyPadding.carousalpadding,
          currentIndicatorColor: Colors.black,
        ),
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Container(
                        margin: const EdgeInsets.all(20.0),
                        padding: const EdgeInsets.all(15.0),
                        child: const Text("WELCOME TO NEWS APP", style: MyTextStyle.welcomepageheader, textAlign: TextAlign.center,)),

                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ]
                          ),
                          child: const ListTile(
                            title: Text('Slide here for more ...', textAlign: TextAlign.center,), 
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image3.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                const defaultSizedBox(),
                const SizedBox(
                  child: Text("Top News Can Read", style: MyTextStyle.welcomepageheader,),
                ),

                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        defaultSizedBox(),
                        Text("Here you can find out news about all United Kingdom of (England) which can identified via first tabbar \"all News\"", style: MyTextStyle.articlepublished,),
                        defaultSizedBox(),
                        Text("Although. There are some other news as well while navigating to the other tabs.", style: MyTextStyle.articlepublished,),
                        defaultSizedBox(),
                        Text("You can see the politicals news, Technology news as well as Sports.", style: MyTextStyle.articlepublished,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image4.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
          Container(
            child: Padding(
              padding: MyPadding.primarypadding,
              child: Column(
                children: const [
                  defaultSizedBox(),
                  Text("What are the benefits",style: MyTextStyle.welcomepageheader,),

                  defaultSizedBox(),
                  Text("This app is based on API providing. So the internet should be stable as well as the connection needs to be strong enough.", style: MyTextStyle.articlepublished,),

                  defaultSizedBox(),
                  Text("Hoping the user will get what the great user experience with my app . Thank you & Enjoy...", style: MyTextStyle.articlepublished,),
                  defaultSizedBox(),
                ],
              ),
            ),
          ),

          SizedBox(
            width: 120.0,
            height: 45.0,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ), 
              child: const Text("Main Page",),
              
              ),
          ),
          
              ]
            ),
          )
        ],
      ),
    );
  }
}



                // Padding(
                //   padding: MyPadding.carousalpadding1,
                //   child: SizedBox(
                //     height: 350.0,
                //   child: PageView.builder(
                //         itemCount: images.length,
                //         pageSnapping: true,
                //         itemBuilder: (context, int index) {
                //           return Container(
                //             margin: const EdgeInsets.all(10.0),
                //             decoration: BoxDecoration(
                //               image: DecorationImage(
                //                 image: AssetImage(images[index]),
                //                 fit: BoxFit.cover
                //               )
                //             ),
                //           );
                //         },
                //       ),
                //   ),
                // ),