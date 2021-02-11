import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/TobaAppCement.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/screen21.dart';
import 'package:tobaapp/UI/AppScreens/screen22.dart';
import 'package:tobaapp/UI/AppScreens/screen23.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import '../../Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tobaapp/Widgets/AppBarWidget.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';

import 'Screen20.dart';


class AlMukatibScreen5 extends StatefulWidget {
  @override
  _AlMukatibScreen5State createState() => _AlMukatibScreen5State();
}
class  _AlMukatibScreen5State extends State<AlMukatibScreen5> {
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
      //height: 700,
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
      //bottomNavigationBar: BottomNavigationBarClass(),

      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //
              //        margin: EdgeInsets.only(left: 20, top: 30),
              //   height: 45,
              //   width: 180,
              //   child: RaisedButton(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(7.0),
              //         side: BorderSide(color:MyColors.ThemeColor2)
              //     ),
              //     color: MyColors.ThemeColor2,
              //     onPressed: () {},
              //     child: Text(
              //       'عمل جولة في التطبيق',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold, color: Colors.white),
              //     ),
              //   ),
              // ),

              //  SizedBox(width: 10),
              // ),

              //  SizedBox(width: 10),
              Container(

                margin: EdgeInsets.only(top: 30, left: 30),
                height: 40,
                width: 90,
                // decoration: BoxDecoration(
                //     border: Border.all(
                //       color: MyColors.ThemeColor2,
                //     ),
                //     borderRadius: BorderRadius.all(Radius.circular(20))
                // ),
                child: RaisedButton.icon(
                  icon: Icon(Icons.wrap_text, color:Colors.white,),
                  label:Text(
                    'الفلتر',
                    style: TextStyle(
                        color: Colors.white,fontSize: 15,fontFamily: "SegoeUIBold"),
                  ),

                  color: MyColors.ThemeColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color:MyColors.ThemeColor2)
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>//obahScreen()
                    //  ),
                    // );


                  },

                ),
              ),
              //    SizedBox(width: 10),
              Container(

                  margin: EdgeInsets.only(top: 30, right: 30),
                  //height: height,
                  //width: width,
                  child:  Text('مقاولي البناء ( تسليم مفتاح )', style: new TextStyle(
                      fontSize: 18.0,
                      color:Colors.black, fontWeight: FontWeight.bold
                      , fontFamily: "SegoeUIRegular"

                  ),
                  )
              ),
            ],
          ),
          Column(
            children: [
              // Container(
              //
              //        margin: EdgeInsets.only(left: 20, top: 30),
              //   height: 45,
              //   width: 180,
              //   child: RaisedButton(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(7.0),
              //         side: BorderSide(color:MyColors.ThemeColor2)
              //     ),
              //     color: MyColors.ThemeColor2,
              //     onPressed: () {},
              //     child: Text(
              //       'عمل جولة في التطبيق',
              //       style: TextStyle(
              //           fontWeight: FontWeight.bold, color: Colors.white),
              //     ),
              //   ),
              // ),
              Container(
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  width: 380,




                  //   color: Colors.blueAccent,

                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 3),
                      ],

                      border: Border.all(
                        color: Colors.grey,

                      )
                  ),


                  child:
                  Column(children:[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        Expanded(
                          flex: 4,
                          child: Container(

                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.white, spreadRadius: 3),
                                  ],

                                  border: Border.all(
                                    color: Colors.grey,

                                  )
                              ),



                              alignment: Alignment.topLeft,
                              child: Image(image: AssetImage('assets/Group14.png'), fit:BoxFit.cover,height: 160,)
                          ),
                        ),

                        Expanded(
                          flex: 7,
                          child:
                          Container(

                            margin: EdgeInsets.only(top:5),
                            alignment: Alignment.topRight,
                            child: Column(
                              children: [

                                Text('مكتب لنا للإستشارات الهندسية', style:TextStyle(fontSize:18,color:Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.right,),
                                SizedBox(height:10,),
                                Container(child: Text(
                                  'استشارات - تصميم - إعتمادات - تنفيذ وإشراف', maxLines: 5,style: TextStyle(fontSize: 12,color:Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.right,

                                )),
                                SizedBox(height:10,),
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    rating: rate,
                                    onRated: (value) {
                                      print(rate);
                                      // setState(() {
                                      //   rate=value;
                                      //
                                      // });
                                    },
                                    starCount: 5,
                                    size: 25.0,
                                    isReadOnly: false,
                                    filledIconData: Icons.star,
                                    color: Colors.black,
                                    borderColor: Colors.black,
                                    spacing: 0.0),
                                SizedBox(height:10,),
                                Container(child: Text('مشاريع من تنفيذنا', maxLines: 5,style: TextStyle(fontSize: 14,color:MyColors.ThemeColor2, fontWeight: FontWeight.bold),


                                )),
                                SizedBox(height:30),

                              ],
                            )
                            ,


                          ),

                        )
                        ,
                      ],


                    ),

                    Column(
                      children: [


                        Container(
                          alignment: Alignment.topRight,
                          width: 50, // contains width and heigh,
                          height: 50,
//                        color: Colors.green,



                        ),

                        Container(
                          // alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right:1),
                          width: 300, // contains width and heigh,
                          height: 40,
                          child: Text('مثال  للنموذج', textAlign: TextAlign.right,style: TextStyle(fontSize: 20, color:MyColors.ThemeColor2, fontWeight: FontWeight.bold, fontFamily: "CairoBold"),),
                          //  color: Colors.green,


//                        color: Colors.green,
//
//                         decoration: new BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//
//                             boxShadow: [
//                               BoxShadow(color: Colors.white, spreadRadius: 7),
//                             ],
//                             border: Border.all(color: Colors.blueAccent)

                        ),




                        Container(
                          width: 320,
                          child: TextField(


                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                BorderSide(color: Colors.blueAccent),
                              ),


                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                BorderSide(color: Colors.blueAccent),
                              ),



                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              //      hintText: "Type in your text",
                              fillColor: Colors.white70,
                            ),
                          ),
                        ),



                        Container(
                          // alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right:1),
                          width: 300, // contains width and heigh,
                          height: 40,
                          child: Text('مثال  للنموذج', textAlign: TextAlign.right,style: TextStyle(fontSize: 20,color:MyColors.ThemeColor2, fontWeight: FontWeight.bold, fontFamily: "CairoBold"),),
                          //  color: Colors.green,


//                        color: Colors.green,
//
//                         decoration: new BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//
//                             boxShadow: [
//                               BoxShadow(color: Colors.white, spreadRadius: 7),
//                             ],
//                             border: Border.all(color: Colors.blueAccent)

                        ),

                        Container(
                          width: 320,
                          child:TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),


                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),


                                filled: true,
                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                //      hintText: "Type in your text",
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(height:10),

                        Container(
                          // alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right:1),
                          width: 300, // contains width and heigh,
                          height: 40,
                          child: Text('مثال  للنموذج', textAlign: TextAlign.right,style: TextStyle(fontSize: 20,color:MyColors.ThemeColor2, fontWeight: FontWeight.bold, fontFamily: "CairoBold"),),
                          //  color: Colors.green,


//                        color: Colors.green,
//
//                         decoration: new BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//
//                             boxShadow: [
//                               BoxShadow(color: Colors.white, spreadRadius: 7),
//                             ],
//                             border: Border.all(color: Colors.blueAccent)

                        ),


                        Container(
                          width: 320,
                          child:
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),


                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),

                                filled: true,
                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                //      hintText: "Type in your text",
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(height:10),

                        Container(
                          // alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right:1),
                          width: 300, // contains width and heigh,
                          height: 40,
                          child: Text('مثال  للنموذج', textAlign: TextAlign.right,style: TextStyle(fontSize: 20,color:MyColors.ThemeColor2, fontWeight: FontWeight.bold, fontFamily: "CairoBold"),),
                          //  color: Colors.green,


//                        color: Colors.green,
//
//                         decoration: new BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//
//                             boxShadow: [
//                               BoxShadow(color: Colors.white, spreadRadius: 7),
//                             ],
//                             border: Border.all(color: Colors.blueAccent)

                        ),



                        Container(
                          width: 320,

                          child:
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                  BorderSide(color: Colors.blueAccent),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                //      hintText: "Type in your text",
                                fillColor: Colors.white70),
                            style: new TextStyle(
                              color: Colors.black,
                            ),

                            maxLines: 7,
                          ) ,),

                        SizedBox(height:40),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 20),
                              child: RaisedButton(
                                child: Text(
                                  'تقديم الطلب',
                                  style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: "SegoeUIRegular"),
                                ),
                                color: MyColors.ThemeColor2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    side: BorderSide(color: MyColors.ThemeColor2)),
                                onPressed: () {




                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>ScreenNo23()),
                                  );




                                },
                              ),
                            ),
                            //    SizedBox(width: 13,),
                            Container(
                              height: 40,
                              width: 120,
                              margin: EdgeInsets.fromLTRB(10, 0, 20, 20),
                              child: RaisedButton(
                                child: Text(
                                  'رجوع ',
                                  style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: "SegoeUIRegular"),
                                ),
                                color: MyColors.ThemeColor2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    side: BorderSide(color: MyColors.ThemeColor2)),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height:15),
                          ],),

                        SizedBox(height:15),

                        //  SizedBox(width: 13,),



                      ],




                    ),


                  ]

                  )

              ),

            ],

          ),
        ],
      ),);
  }
}