import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';

import 'package:tobaapp/UI/AppScreens/TobahScreen.dart';

class BottomNavigationBarClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
      currentIndex: 0, // this will be set when a new tab is tapped
     type: BottomNavigationBarType.fixed,

       items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            nav1, height: 25,
          ),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            nav2, height: 25,
          ),
          title: new Text('Messages'),
        ),

        BottomNavigationBarItem(
          icon:Image.asset(
          nav3, height: 25,),
             title:Text('Profile'),
    ),



        BottomNavigationBarItem(
          icon: Image.asset(
            nav4, height: 25,
          ),
          title: new Text('Messages'),
        ),
         BottomNavigationBarItem(
           icon: Image.asset(
             nav5, height: 25,
           ),
           title: new Text('Messages'),
         ),



      ],
    );
  }
}