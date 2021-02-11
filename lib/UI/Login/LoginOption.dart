import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';

import 'package:tobaapp/UI/AppScreens/BahasAnMaktab.dart';

import 'package:tobaapp/UI/Login/SplashScreen.dart';
import '../../Constant/Images.dart';

class LoginOption extends StatefulWidget {
  @override
  _LoginOptionState createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.instance = ScreenUtil(
      height: 700,
      width: MediaQuery.of(context).size.width,
      allowFontScaling: true,
    )..init(context);
    ScreenUtil screenUtil = ScreenUtil();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(background),
                  fit: BoxFit.fill,
                  centerSlice: Rect.zero),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 100,
                      width: 120,
                      child: Image.asset("assets/images/tobalogo.png"),
                    ),

                   Directionality(
                     textDirection: TextDirection.rtl,

                     child: TextField(
                      decoration: InputDecoration(
                          labelText: 'رقم الجوال أو البريد الإلكتروني',
                          labelStyle: TextStyle(fontFamily: "SegoeUIBold"),
                      ),
                       textAlign: TextAlign.right,
                       autofocus: true,

                     ),
                   ),

                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: TextField(
                        decoration: InputDecoration(
                           labelText: 'كلمة المرور',
                           labelStyle: TextStyle(fontFamily: "SegoeUIBold"),

                           suffixIcon: Image.asset('assets/images/icon-awesome_eye.png'),


                        ),
                        textAlign: TextAlign.right,
                        autofocus: true,
                      ),

                    ),                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 55,
                      width: width,
                      child: RaisedButton(
                        color: MyColors.ThemeColor2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>BahasAnMaktab()),
                          );

                          
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white
                              ,fontFamily: "SegoeUIBold", fontSize: 20

                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          child: Text(
                            'هل نسيت كلمة المرور ؟',
                            style: TextStyle(color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                            'تسجيل',
                            style: TextStyle(color: Colors.yellow ,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
               
               //pink button
                   Container(
                     
                      height: 50,
                      width: width,


                      child: RaisedButton(
                        color: Colors.yellow,
                        //color: MyColors.ThemeColor3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),

                        onPressed: () {},
                        child: Text(
                          'عمل جولة في التطبيق',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white ,fontFamily: "SegoeUIBold", fontSize: 20),
                        ),
                      ),
                      
                    ),
               
                  ],
                ),
              ),
              
            ],
          ),
          Container(
            margin: EdgeInsets.only(top:15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20, right: 20,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 5,
                          width: width / 4,
                          color: Colors.white,
                        ),
                        Container(
                          child: Text(
                            'الدخول عن طريق',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: width / 4,
                          color: Colors.white,
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 100,

                        decoration: BoxDecoration(

                          // image: DecorationImage(
                          //   image: AssetImage(
                          //       nav6),
                          //   fit: BoxFit.fill,
                          // ),
                          color: Colors.blue,
                          image: DecorationImage(
                            image:  ExactAssetImage('assets/images/awesome-facebook-f.png'),

                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,

                        child: Center(

                          child: Container(

                            decoration: BoxDecoration(

                              // image: DecorationImage(
                              //   image: AssetImage(
                              //       nav6),
                              //   fit: BoxFit.fill,
                              // ),
                              color: Colors.white,
                              image: DecorationImage(
                                image:  ExactAssetImage('assets/images/awesome-google.png'),

                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),

                        ),


                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'سياسة الخصوصية',
                        style: TextStyle(color: Colors.white ,fontFamily: "SegoeUIBold", fontSize: 20),
                      ),
                      Text('الشروط والأحكام',
                          style: TextStyle(color: Colors.white ,fontFamily: "SegoeUIBold", fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


}
