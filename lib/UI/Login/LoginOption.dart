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
                margin: EdgeInsets.only(left: 20, right: 20),
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
                          labelText: 'رقم الجوال أو البريد الإلكتروني'),
                       textAlign: TextAlign.right,
                       autofocus: true,

                     ),
                   ),

                    Directionality(
                      textDirection: TextDirection.rtl,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'رقم الجوال أو البريد الإلكتروني'),
                        textAlign: TextAlign.right,
                        autofocus: true,

                      ),
                    ),



                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 45,
                      width: width,
                      child: RaisedButton(
                        color: MyColors.ThemeColor2,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>BahasAnMaktab()),
                          );

                          
                        },
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          child: Text(
                            'هل نسيت كلمة المرور ؟',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                            'تسجيل',
                            style: TextStyle(color: Colors.yellow),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: width,
                      child: RaisedButton(
                        color: MyColors.ThemeColor3,
                        onPressed: () {},
                        child: Text(
                          'عمل جولة في التطبيق',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
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
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'سياسة الخصوصية',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('الشروط والأحكام',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


}
