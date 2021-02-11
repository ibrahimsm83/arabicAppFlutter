import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/Constant/Images1.dart';
import 'package:tobaapp/SearchContent/Search.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/screen24.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'CementProduct.dart';



class CementProductSale extends StatefulWidget {
  @override
  _CementProductSaleState createState() => _CementProductSaleState();
}

class _CementProductSaleState extends State<CementProductSale> {
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
          ExtraSpace(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 100,
                child: RaisedButton.icon(
                  icon: Icon(
                    Icons.wrap_text,
                    color: Colors.white,
                  ),
                  label: Text(
                    'الفلتر',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "SegoeUIBold"),
                  ),
                  color: MyColors.ThemeColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: MyColors.ThemeColor2)),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>//obahScreen()
                    //  ),
                    // );
                  },
                ),
              ),
              ExtraSpace(
                width: 10,
              ),
              Container(
                child: Text('منتجات ومواد البناء',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17, fontFamily: "SegoeUIBold")
                  //TextStyle: Colors.grey.shade400,FontWeight.bold,
                ),
              ),
            ],
          ),
          ExtraSpace(
            height: 30,
          ),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonsForTop(Texting: 'المواسير',),
                  ButtonsForTop(Texting: 'الإسمنت',),
                  ButtonsForTop(Texting: 'الخرسان',),
                  ButtonsForTop(Texting: 'البلك',),
                ],
              )),
          ExtraSpace(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            primary: true,
            itemBuilder: (context, index) {
              return ProductItems();
            },
          ),
          SizedBox(height: 20.0,),
          //apple button
          Container(
            height:height*0.08,
            margin: EdgeInsets.all(10.0),
            //height: MediaQuery.of(context).size.height/16,
            width: MediaQuery.of(context).size.width,
        //     color: Colors.white,
          //  color:Colors.white,
      //      child:Text('255      ريال'),

            decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:  MyColors.ThemeColor2),
//                image: DecorationImage(image: AssetImage('assets/apple.png',),
                ),
            child: FlatButton(
              child: Text(
                "255      ريال",
                style:TextStyle(color: MyColors.ThemeColor2,fontSize: 18),
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //     builder: (context)=> ScreenNo24()));
              },
            ),
            ),
          SizedBox(height: 2.0,),
          Container(
            height:height*0.08,
            margin: EdgeInsets.all(10.0),
            //height: MediaQuery.of(context).size.height/16,
            width: MediaQuery.of(context).size.width,
         //   child:Text('255الإستمرار   للدفع'),
            decoration: BoxDecoration(
                color:MyColors.ThemeColor2,

                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.ThemeColor2),
              //
              //  image: DecorationImage(image: AssetImage('assets/apple.png',))
            ),

            child: FlatButton(
              child:Text('الإستمرار   للدفع',style:TextStyle(color: Colors.white, fontSize: 18)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> ScreenNo24()));
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
  var rate = 3.0;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 1.5),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              cement,
              fit: BoxFit.fill,
              height: 205,
            ),
            flex: 4,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        ExtraSpace(
                          height: 6,
                        ),
                        Text(
                          'شركة اسمنت حائل',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                          textAlign: TextAlign.right,
                        ),
                        ExtraSpace(
                          height: 4,
                        ),
                        Text(
                          'اسمنت مقاوم ثقيل',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
                Quantity()
                ,
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
                ExtraSpace(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'السعر: 18 ريال',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'طلب عرض سعر',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ExtraSpace(
                  height: 6,
                ),
              ],
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class ButtonsForTop extends StatelessWidget {
  @override
  String Texting;
  ButtonsForTop({this.Texting});

  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        child: Text(
          this.Texting,
          style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "SegoeUIBold"),
        ),
        color: MyColors.ThemeColor2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: BorderSide(color: MyColors.ThemeColor2)),
        onPressed: () {},
      ),
    );
  }
}

class Quantity extends StatefulWidget {
  @override
  _QuantityState createState() => _QuantityState();
}


class _QuantityState extends State<Quantity> {
  @override
  int value=1;
  void Addition(){
    setState(() {
      if(value>0){

        value++;}
    });

  }
  void Subtraction(){
    setState(() {
      if(value>1){
        value--;
      }

    });
  }
  Widget build(BuildContext context) {
    print(value);
    return Row(
      children: [
        ExtraSpace(
          width: 10,
        ),
        Column(
          children: [


            GestureDetector(

              onTap: Addition,
              child: Image.asset(
                angleup,


              ),
            ),
            ExtraSpace(
              height: 6,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.ThemeColor2,
                boxShadow: [
                  BoxShadow(color: MyColors.ThemeColor2, spreadRadius: 1),
                ],
              ),
              child: Text(
                value.toString(),
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ExtraSpace(
              height: 6,
            ),
            GestureDetector(
              onTap: Subtraction,
              child: Image.asset(
                angledown,

              ),
            ),
          ],
        ),
      ],
    );
  }
}

