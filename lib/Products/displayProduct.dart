import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/Constant/Images1.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatib.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/screen24.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tobaapp/SearchContent/Search.dart';

class displayProduct extends StatefulWidget {
  @override
  _displayProductState createState() => _displayProductState();
}

class _displayProductState extends State<displayProduct> {
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
      appBar: AppBar(
        title: SearchbyTextField(hintText: 'بحث عن مكتب إستشارات هندسية',),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.white,
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



      body:
      ListView(
        children: [
          ExtraSpace(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: 100,
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
                        color: Colors.white,fontSize: 15, fontFamily: "SegoeUIBold"),
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
              Text('المكاتب الهندسية والإستشارية',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17, fontFamily: "SegoeUIBold")
                //TextStyle: Colors.grey.shade400,FontWeight.bold,
              ),

            ],
          ),
          ExtraSpace(
            height: 40,
          ),
          Center(
            child: Container(
              height: 45,
              width: 350,
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) =>//obahScreen()
                  //  ),
                  // );


                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>AlMukatib()),
                  );




                },
                child: Text(
                  'طلب عرض من المكاتب',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20, fontFamily: "SegoeUIBold"),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ExtraSpace(
            height: 20,
          ),
          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AlMukatib()),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              primary: true,
              itemBuilder: (context, index){
                return ProductItems();


              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItems extends StatefulWidget {
  @override
  _ProductItemsState createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  @override
  var rate = 0.0;

  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 1.5),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:Image.asset(
              displayimage,
              fit: BoxFit.cover,
              height: 154,
            ),
            flex: 4,
          ),
          Expanded(
            child:Column(
              children: [
                ExtraSpace(height: 8,),
                Text('مكتب لنا للإستشارات الهندسية',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17),
                  textAlign: TextAlign.center,
                ),
                ExtraSpace(height: 10,),
                Text('استشارات - تصميم - إعتمادات - تنفيذ وإشراف',
                  style: TextStyle(
                      color: Colors.black,fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                ExtraSpace(height: 10,),
                SmoothStarRating(
                    allowHalfRating: false,
                    rating: rate,
                    onRated: (value) {
                      print(rate);
                      setState(() {
                        rate=value;

                      });
                    },
                    starCount: 5,

                    size: 25.0,
                    isReadOnly: false,
                    filledIconData: Icons.star,
                    color: Colors.black,
                    borderColor: Colors.black,
                    spacing: 0.0),
                ExtraSpace(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('أمثلة من مشاريعنا',
                      style: TextStyle(
                          color: Color(0xff12BBAE),fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(color: Colors.black, height: 20 , width: 2,),

                    Text('طلب عرض سعر',
                      style: TextStyle(
                          color: Color(0xff12BBAE),fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ExtraSpace(height: 12,),
              ],
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}