
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/components/constants/style.dart';
import 'package:news_app/components/constants/widgets.dart';
import 'package:news_app/pages/tabbar/customtabbar.dart';
import 'package:news_app/services/api_services.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();  

  ApiServiceBusiness client1 = ApiServiceBusiness();
  ApiServiceHealth client2 = ApiServiceHealth();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            drawerHeader(),
            const defaultSizedBox(),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: drawerheadertext(),),
            drawerBox(),
          ],
        ),
      ),
      key: _scaffoldKey,
      body:  ColorfulSafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    menuIcon(),
                     Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Buildtitle(),
                          ),
                      IconButton(onPressed: (){
                        showAlertDialog(context);
                      }, 
                        icon: MyTextStyle.alertIcon),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const CustomTabBar(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox menuIcon() {
    return SizedBox(
      child: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(), 
        icon: SvgPicture.asset('assets/svg/menu.svg'),
      ),
    );
  }
}



