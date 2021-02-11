import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatib.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import '../../Constant/Images.dart';



class TobahScreen extends StatefulWidget {
  @override
  _TobahScreenState createState() => _TobahScreenState();
}
class  _TobahScreenState extends State<TobahScreen> {
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
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //
      //   title: SearchbyTextField(),
      //   actions: <Widget>[
      //     //IconButton
      //     //IconButton
      //   ], //<Widget>[]
      //   elevation: 50.0,
      //   leading: IconButton(
      //     icon: Icon(Icons.comment,color: MyColors.ThemeColor2,
      //       size: 30,),
      //     tooltip: 'Comment Icon',
      //     onPressed: () {
      //
      //
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => MarkazMusayda()));
      //
      //
      //     },
      //   ), //IconButton
      //   brightness: Brightness.dark,
      //
      // ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          //height: 70.0,


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  //Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => ScreenNo25()));
                },
                icon: Icon(
                  Icons.image,
                  size: 36.0,
                  color: MyColors.ThemeColor2,
                ),
              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.person, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book, size: 36.0),
              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.favorite, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded, size: 36.0),
              ),
            ],
          ),
        ),
      ),
     // bottomNavigationBar: BottomNavigationBarClass(),
      body:SingleChildScrollView(child:  Stack(
        children: [
          Container(

            margin:EdgeInsets.only(right:30, top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   //icon: Icon(Icons.message, size: 24.0),
                // ),
                Image.asset(
                  'assets/Group15.png',
                  height: 60,
                  width: 80,
                ),



              ],
            ),
          ),
          Container(

            margin:EdgeInsets.only(left:30, top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   //icon: Icon(Icons.message, size: 24.0),
                // ),
                 IconButton(
                  icon: Icon(Icons.comment,color: MyColors.ThemeColor2,
                    size: 30,),
                  tooltip: 'Comment Icon',
                  onPressed: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MarkazMusayda()));


                  },
                ), //IconB

              ],
            ),
          ),



          Container(

            margin:EdgeInsets.only(right:30, top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   //icon: Icon(Icons.message, size: 24.0),
                // ),
                Image.asset(
                  'assets/Group15.png',
                  height: 60,
                  width: 80,
                ),
              ],
            ),
          ),



          Column(


            children:[Container(
            margin: EdgeInsets.only(left: 150, top: 70),

            height: 100,
            width: 120,
            child: Image.asset(mainlogo),
          ),
          Container(
            margin: EdgeInsets.only(left: 150, top: 10),
            height: 100,
            width: 120,
            child: Image.asset(appLogo),
          ),],
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 280),


                child: Column(
                  children: [

                    Container(
                      height: 50,
                      width: width,
                      // decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: MyColors.ThemeColor2,
                      //     ),
                      //     borderRadius: BorderRadius.all(Radius.circular(20))
                      // ),
                      child: RaisedButton(
                        color: MyColors.ThemeColor2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                      onPressed: () {
                      Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) =>MarkazMusayda()),
                      );
                      },
                        child: Text(
                          'الملف الشخصي',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontFamily: "SegoeUIBold", color: Colors.white
                          ,fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(

                      //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      height: 50,
                      width: width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                        color: MyColors.ThemeColor2,
                        onPressed: () {


                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>AlMukatib()),
                          );


                        },
                        child: Text(
                          'المدفوعات',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontFamily: "SegoeUIBold", color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(

                      //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      height: 50,
                      width: width,

                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                        color: MyColors.ThemeColor2,
                        onPressed: () {},
                        child: Text(
                          'بيانات البطاقة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontFamily: "SegoeUIBold", color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(

                      //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      height: 50,
                      width: width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                        color: MyColors.ThemeColor2,
                        onPressed: () {},
                        child: Text(
                          'العروض الخاصة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontFamily: "SegoeUIBold", color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(

                      //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      height: 50,
                      width: width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            side: BorderSide(color:MyColors.ThemeColor2)
                        ),
                        color: MyColors.ThemeColor2,
                        onPressed: () {},
                        child: Text(
                          'العروض الخاصة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontFamily: "SegoeUIBold", color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height:20),




                  ],
                ),
              ),
            ],
          ),
        ],
      ),),);
  }
}