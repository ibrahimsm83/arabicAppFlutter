import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Banking/Banks.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/CementProduct.dart';
import 'package:tobaapp/Products/CementSelling.dart';
import 'package:tobaapp/Products/ChairProduct.dart';
import 'package:tobaapp/Products/HouseProduct.dart';
import 'package:tobaapp/Products/MenProduct.dart';
import 'package:tobaapp/Products/TobaAppCement.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/Products/displayProduct.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/Screen20.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';

import 'package:tobaapp/UI/AppScreens/TobahScreen.dart';
import '../../Constant/Images.dart';



class BahasAnMaktab extends StatefulWidget {
  @override
  _BahasAnMaktabState createState() => _BahasAnMaktabState();
}
class  _BahasAnMaktabState extends State<BahasAnMaktab> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: SearchbyTextField(),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.comment,color: MyColors.ThemeColor2,
            size: 30,),
          tooltip: 'Comment Icon',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarkazMusayda()));
          },
        ), //IconButton
        brightness: Brightness.dark,

      ),

     // bottomNavigationBar: BottomNavigationBarClass(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          //height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => displayProduct()));
               },
                icon: Icon(
                  Icons.image,
                  size: 36.0,
                  color: MyColors.ThemeColor2,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TobahScreen()));

                },
                icon: Icon(Icons.person, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book, size: 36.0),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => displayProduct()));

                },
                icon: Icon(Icons.favorite, size: 36.0),
              ),
              IconButton(
                onPressed: () {

    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TobahScreen()));

                },
                icon: Icon(Icons.account_circle_rounded, size: 36.0),
              ),
            ],
          ),
        ),
      ),

      body:SingleChildScrollView(child:  Stack(
          children: [
            Container(
          width: MediaQuery.of(context).size.width,
          height:250,
          decoration: BoxDecoration(
            image: DecorationImage(
            alignment: Alignment.bottomCenter,
        //    fit: BoxFit.fill,
            image: AssetImage(imagebackground),
            ),
          ),

        ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 280),

                  child: Column(
                    children: [

                      Container(
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>displayProduct()),
                            );


                          },
                          child: Text(
                            'المكاتب الهندسية والإستشارية',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white
                                ,fontFamily: "SegoeUIBold", fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                 //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>MenProduct()),
                            );



                          },
                          child: Text(
                            'المهندسون والمستشارون',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>HouseProduct()),
                            );


                          },
                          child: Text(
                            'مقاولي البناء ( تسليم مفتاح )',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>ChairProduct()),
                            );


                          },
                          child: Text(
                            'مقاولي الباطن',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>CementProduct()),
                            );



                          },
                          child: Text(
                            'منتجات ومواد البناء',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height:20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>VillasProduct()),
                            );


                          },
                          child: Text(
                            'المساكن الجاهزة',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>Banks()),
                            );



                          },
                          child: Text(
                            'العروض التمولية',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Container(

                        //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                        height: 45,
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
                              MaterialPageRoute(builder: (context) =>displayProduct()),
                            );



                          },
                          child: Text(
                            'عروض الأسعار',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),




                      //
                      // Row(
                      //   children: [
                      //     Container(
                      //
                      //       //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      //       height: 45,
                      //       width: 180,
                      //       child: RaisedButton(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(7.0),
                      //             side: BorderSide(color:MyColors.ThemeColor2)
                      //         ),
                      //         color: MyColors.ThemeColor2,
                      //         onPressed: () {},
                      //         child: Text(
                      //           'العروض التمولية',
                      //           style: TextStyle(
                      //               fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                      //         ),
                      //       ),
                      //     ),
                      //
                      //     SizedBox(width: 10),
                      //     Container(
                      //
                      //       //       margin: EdgeInsets.only(left: 20, right: 20, top: 30cxdc0),
                      //       height: 45,
                      //       width: 180,
                      //       child: RaisedButton(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(7.0),
                      //             side: BorderSide(color:MyColors.ThemeColor2)
                      //         ),
                      //         color: MyColors.ThemeColor2,
                      //         onPressed: () {
                      //
                      //         //   Navigator.push(
                      //         //     context,
                      //         // MaterialPageRoute(builder: (context) =>MenProduct()),
                      //         //   );
                      //
                      //
                      //
                      //         },
                      //         child: Text(
                      //           'عروض الأسعار',
                      //           style: TextStyle(
                      //               fontWeight: FontWeight.bold, color: Colors.white,fontFamily: "SegoeUIBold", fontSize: 20),
                      //         ),
                      //       ),
                      //     ),
                      //
                      //   ],
                      //
                      //
                      // ),
                      //
                      // SizedBox(height: 30),



                    ],
                  ),
                ),
              ],
            ),
    ],
    ),),);
  }
}
