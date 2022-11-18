import 'package:flutter/material.dart';
import 'package:news_app/components/constants/style.dart';
import 'package:news_app/pages/tabbar/fifthscreen.dart';
import 'package:news_app/pages/tabbar/firstscreen.dart';
import 'package:news_app/pages/tabbar/fourthscreen.dart';
import 'package:news_app/pages/tabbar/secondscreen.dart';
import 'package:news_app/pages/tabbar/thirdscreen.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({ Key? key }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TabController tabController = 
    TabController(length: 5, vsync: this);

    return Column(
      children: [
        SizedBox(
          width: width,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: MyPadding.primarypadding1,
              child: TabBar(
		            isScrollable: true,
                controller: tabController,
                labelColor: Mycolors.primarywhite,
                unselectedLabelColor: Mycolors.primarygrey,
                splashFactory: NoSplash.splashFactory,
                indicator: BoxDecoration(
                  borderRadius: MyBorderRadius.secondaryborderradius,
                  color: Mycolors.primarydeeppurple,
                ),
                splashBorderRadius: MyBorderRadius.secondaryborderradius,
                
                tabs: const [
                  Tab(child: Text("Business", style: MyTextStyle.tabbarstyle),),
                  Tab(child: Text("Health", style: MyTextStyle.tabbarstyle),),
                  Tab(child: Text("Science",style: MyTextStyle.tabbarstyle),),
                  Tab(child: Text("Sports",style: MyTextStyle.tabbarstyle),),
                  Tab(child: Text("Technology",style: MyTextStyle.tabbarstyle),),

                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: height,
          child: TabBarView(
            controller: tabController,
            children: const [
                SizedBox(child: Padding(
                  padding: MyPadding.secondarypadding,
                  child: FirstScreen(),
                )),
                SizedBox(child: Padding(
                  padding: MyPadding.secondarypadding,
                  child: SecondScreen(),
                )),
                
                SizedBox(child: Padding(
                  padding: MyPadding.secondarypadding,
                  child: ThirdScreen(),
                )),
                SizedBox(child: Padding(
                  padding: MyPadding.secondarypadding,
                  child: FourthScreen(),
                )),
                SizedBox(child: Padding(
                  padding: MyPadding.secondarypadding,
                  child: FifthScreen(),
                )),
          ]),
        ),
      ],
    );
  }
}

