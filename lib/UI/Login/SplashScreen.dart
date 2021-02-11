import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/UI/Login/LoginOption.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';

class SplashScreen extends StatefulWidget {
  @override


  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override


  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    ScreenUtil.instance = ScreenUtil(
      height: 700,
      width: MediaQuery.of(context).size.width,
      allowFontScaling: true,
    )..init(context);
    ScreenUtil screenUtil = ScreenUtil();

    return Scaffold(
       body:Stack(
         children: [




           Container(
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover,),
             ),
           ),

           Positioned(
             top: 80,
             left: 100,
             child: Container(
               height: 210.0,
               width: 210.0,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(
                       mainlogo),
                   fit: BoxFit.fill,
                 ),
                 shape: BoxShape.circle,
               ),
             ),
           ),

           Positioned(
             top: 280,
             left: 160,
             child: Container(
               height: 100.0,
               width: 100.0,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(
                       appLogo),
                   fit: BoxFit.fill,
                 ),
                 shape: BoxShape.circle,
               ),
             ),
           ),

           Center(
             child: Container(


               margin: EdgeInsets.only(top:380),

               height: 50,
               width: width * 0.8,
               child: RaisedButton(
                 color: MyColors.ThemeColor2,
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>LoginOption()),
                   );


                 },
                 child: Text(
                   'تسجيل الدخول',
                   style: TextStyle(
                       fontWeight: FontWeight.bold, color: Colors.white
                       ,fontFamily: "SegoeUIBold", fontSize: 20),
                 ),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(7.0),
                     side: BorderSide(color:MyColors.ThemeColor2)
                 ),


               ),
             ),
           ),


         ],
       )

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Center(
      //       child: Column(
      //         children: [
      //           //TODO: App Image
      //           Image(
      //             image: AssetImage(appLogo),
      //             height: 100,
      //           ),
      //
      //
      //
      //         ],
      //       ),
          );

  }
}
